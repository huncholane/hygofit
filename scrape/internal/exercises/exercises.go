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
		println("Checking out ", parsed.Path, muscle.Url)
		content, err := cacherequest.CacheGetRequest(parsed.Path)
		if err != nil {
			continue
		}
		re := regexp.MustCompile(`(?s)pager-item.*?(\d)</a>`)
		matches := re.FindAllStringSubmatch(string(content), -1)
		for _, m := range matches {
			println(muscle.Name, m[1])
		}
	}
	return em, nil
}
