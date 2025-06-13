package models

import (
	"fmt"
	"net/url"
	"regexp"
	"strconv"

	"github.com/huncholane/hygofit-scrape/internal/cacherequest"
	"github.com/huncholane/hygofit-scrape/internal/settings"
)

type Exercise struct {
	Name       string
	Target     string
	Focus      string
	Equipment  string
	Force      string
	Experience string
	Views      string
	Endpoint   string
}

func (e *Exercise) GetViews() int {
	re := regexp.MustCompile(`([\d\.]+)([KM]?)`)
	match := re.FindStringSubmatch(e.Views)
	views := 0
	if len(match) == 3 {
		f, _ := strconv.ParseFloat(match[1], 32)
		switch match[2] {
		case "K":
			views = int(f * 1000)
		case "M":
			views = int(f * 1000000)
		}
	}
	return views
}

func (e *Exercise) GetUrl() string {
	return settings.RootUrl + e.Endpoint
}

func (e *Exercise) InsertStmt() string {
	return fmt.Sprintf(`
WITH
	target_lookup AS (SELECT id FROM muscle WHERE name='%s'),
	focus_lookup AS (SELECT id FROM focus WHERE name='%s'),
	equipment_lookup AS (SELECT id FROM equipment WHERE name='%s'),
	force_lookup AS (SELECT id FROM force WHERE name='%s'),
	experience_lookup AS (SELECT id FROM experience WHERE name='%s')
INSERT INTO exercise (name, target, focus, equipment, force, experience, views, url)
SELECT
	'%s',
  (SELECT id FROM target_lookup),
  (SELECT id FROM focus_lookup),
  (SELECT id FROM equipment_lookup),
  (SELECT id FROM force_lookup),
  (SELECT id FROM experience_lookup),
  %d,
  '%s'
ON CONFLICT DO NOTHING;`,
		e.Target,
		e.Focus,
		e.Equipment,
		e.Force,
		e.Experience,
		e.Name,
		e.GetViews(),
		e.GetUrl(),
	)
}

type ExerciseMan struct {
	Exercises []Exercise
}

func (em *ExerciseMan) ScrapeMusclePage(muscle Muscle, content string) {
	re := regexp.MustCompile(`(?s)<label>Type</label>\n\s+(.*?)\s+</div>.*?Equipment.*?\n\s+(.*?)\s+</div>.*?Mechanics.*?\n\s+(.*?)\s+</div>.*?Exp. Level.*?\n\s+(.*?)\s+</div>.*?<a href="(.*?)" alt="(.*?)".*?<span>\s+(.*?) Views`)
	matches := re.FindAllStringSubmatch(content, -1)
	for _, m := range matches {
		em.Exercises = append(em.Exercises, Exercise{
			Name:       m[6],
			Target:     muscle.Name,
			Focus:      m[1],
			Equipment:  m[2],
			Force:      m[3],
			Experience: m[4],
			Views:      m[7],
			Endpoint:   m[5],
		})
	}
}

func (em *ExerciseMan) InsertStatement() string {
	focuses := make(map[string]struct{})
	stmt := "INSERT INTO focus (name) VALUES"
	for _, e := range em.Exercises {
		if _, exists := focuses[e.Focus]; !exists {
			stmt = fmt.Sprintf("%s('%s'),", stmt, e.Focus)
			focuses[e.Focus] = struct{}{}
		}
	}
	stmt = stmt[:len(stmt)-1] + ";\nINSERT INTO equipment (name) VALUES"
	equipments := make(map[string]struct{})
	for _, e := range em.Exercises {
		if _, exists := equipments[e.Equipment]; !exists {
			stmt = fmt.Sprintf("%s('%s'),", stmt, e.Equipment)
			equipments[e.Equipment] = struct{}{}
		}
	}
	stmt = stmt[:len(stmt)-1] + ";\nINSERT INTO force (name) VALUES"
	forces := make(map[string]struct{})
	for _, e := range em.Exercises {
		if _, exists := forces[e.Force]; !exists {
			stmt = fmt.Sprintf("%s('%s'),", stmt, e.Force)
			forces[e.Force] = struct{}{}
		}
	}
	stmt = stmt[:len(stmt)-1] + ";\nINSERT INTO experience (name) VALUES "
	exps := make(map[string]struct{})
	for _, e := range em.Exercises {
		if _, exists := exps[e.Experience]; !exists {
			stmt = fmt.Sprintf("%s('%s'),", stmt, e.Experience)
			exps[e.Experience] = struct{}{}
		}
	}
	stmt = stmt[:len(stmt)-1] + ";"
	for _, e := range em.Exercises {
		stmt = fmt.Sprintf("%s\n%s", stmt, e.InsertStmt())
	}
	return stmt
}

func ScrapeExercises() (ExerciseMan, error) {
	em := ExerciseMan{}
	mm, err := ScrapeMuscles()
	if err != nil {
		return em, err
	}
	for _, muscle := range mm.Muscles {
		parsed, err := url.Parse(muscle.Url)
		if err != nil {
			continue
		}
		content, err := cacherequest.CacheGetRequest(parsed.Path)
		if err != nil {
			continue
		}
		em.ScrapeMusclePage(muscle, string(content))
		re := regexp.MustCompile(`(?s)pager-item.*?(\d)</a>`)
		matches := re.FindAllStringSubmatch(string(content), -1)
		final := 1
		if len(matches) > 1 {
			final, _ = strconv.Atoi(matches[len(matches)-1][1])
		}
		for i := 2; i <= final; i++ {
			endpoint := fmt.Sprintf("%s?page=%d", parsed.Path, i-1)
			content, err := cacherequest.CacheGetRequest(endpoint)
			if err != nil {
				continue
			}
			em.ScrapeMusclePage(muscle, string(content))
		}
	}
	return em, nil
}
