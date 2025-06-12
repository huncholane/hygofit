package exercises

import (
	"net/url"
	"regexp"

	"github.com/huncholane/hygofit-scrape/internal/cacherequest"
	"github.com/huncholane/hygofit-scrape/internal/muscles"
)

type Exercise struct {
	name       string
	target     string
	focus      string
	equipment  string
	force      string
	experience string
	views      string
}

type ExerciseMan struct {
	Exercises []Exercise
}

func ScrapeMusclePage(content string) []Exercise {
	e := []Exercise{}
	re := regexp.MustCompile(`(?s)<label>Type</label>\n\s+(.*?)\s+</div>.*?Equipment.*?\n\s+(.*?)\s+</div>.*?Mechanics.*?\n\s+(.*?)\s+</div>.*?Exp. Level.*?\n\s+(.*?)\s+</div>.*?<a href="(.*?)" alt="(.*?)"`)
	matches := re.FindAllStringSubmatch(content, -1)
	for _, m := range matches {
		println(m[5])
	}
	return e
}

func ScrapeExercises() (ExerciseMan, error) {
	em := ExerciseMan{}
	mm, err := muscles.ScrapeMuscles()
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
		ScrapeMusclePage(string(content))
		// re := regexp.MustCompile(`(?s)pager-item.*?(\d)</a>`)
		// matches := re.FindAllStringSubmatch(string(content), -1)
		// final := 2
		// if len(matches) > 1 {
		// 	final, _ = strconv.Atoi(matches[len(matches)-1][1])
		// }
	}
	return em, nil
}
