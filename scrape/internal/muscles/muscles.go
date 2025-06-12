package muscles

import (
	"fmt"
	"regexp"

	"github.com/huncholane/hygofit-scrape/internal/cacherequest"
	"github.com/huncholane/hygofit-scrape/internal/settings"
)

type Muscle struct {
	Name string
	Url  string
}

func (m Muscle) TupleStr() string {
	return fmt.Sprintf("('%s', '%s')", m.Name, m.Url)
}

type MuscleMan struct {
	Muscles []Muscle
}

func (mm MuscleMan) SqlStatement() string {
	sql := "INSERT INTO muscle (name,url) VALUES "
	for i, m := range mm.Muscles {
		if i == len(mm.Muscles)-1 {
			sql = fmt.Sprintf("%s,%s;", sql, m.TupleStr())
		} else {
			sql = fmt.Sprintf("%s,%s", sql, m.TupleStr())
		}
	}
	return sql
}

func ScrapeMuscles() (MuscleMan, error) {
	mm := MuscleMan{}
	body, err := cacherequest.CacheGetRequest("/exercises")
	if err != nil {
		return mm, err
	}

	re := regexp.MustCompile(`(?s)<a href="([^"]+)".*?<div class="category-name">([^<]+)</div>`)
	matches := re.FindAllStringSubmatch(string(body), -1)

	if len(matches) == 0 {
		return mm, nil
	}

	for _, match := range matches {
		mm.Muscles = append(mm.Muscles, Muscle{settings.RootUrl + match[1], match[2]})
	}
	return mm, nil
}
