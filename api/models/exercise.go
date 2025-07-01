package models

import (
	"fmt"
	"log"
	"math/rand/v2"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/golib/querytools"
	"github.com/huncholane/hygofit/api/globals"
)

type ExerciseStatement struct {
	Limit           int
	MinViews        int
	BlocksPerTarget int
	OrderBy         querytools.OrderBy
	Target          string
	Focus           string
	Equipment       string
	Force           string
	Experience      string
}

var ExerciseFieldSet = map[string]struct{}{
	"id":         {},
	"name":       {},
	"target":     {},
	"focus":      {},
	"equipment":  {},
	"force":      {},
	"experience": {},
	"views":      {},
	"url":        {},
}

func ExerciseStatementFromContext(c *gin.Context) ExerciseStatement {
	limit, _ := querytools.QueryInt(c, "limit", 0)
	minViews, _ := querytools.QueryInt(c, "minViews", 1000000)
	blocksPerTarget, _ := querytools.QueryInt(c, "blocksPerTarget", 0)
	orderBy := querytools.QueryOrderBy(c, ExerciseFieldSet, "-views")
	target := querytools.QueryInToSql(c, "AND", "muscle.name", "target", "all")
	focus := querytools.QueryInToSql(c, "AND", "focus.name", "focus", "all")
	equipment := querytools.QueryInToSql(c, "AND", "equipment.name", "equipment", "all")
	force := querytools.QueryInToSql(c, "AND", "force.name", "force", "all")
	experience := querytools.QueryInToSql(c, "AND", "experience.name", "experience", "all")

	return ExerciseStatement{
		Limit:           limit,
		MinViews:        minViews,
		BlocksPerTarget: blocksPerTarget,
		OrderBy:         orderBy,
		Target:          target,
		Focus:           focus,
		Equipment:       equipment,
		Force:           force,
		Experience:      experience,
	}
}

type Exercise struct {
	ID         int    `db:"id" json:"id"`
	Name       string `db:"name" json:"name"`
	Target     string `db:"target" json:"target"`
	Focus      string `db:"focus" json:"focus"`
	Equipment  string `db:"equipment" json:"equipment"`
	Force      string `db:"force" json:"force"`
	Experience string `db:"experience" json:"experience"`
	Views      int    `db:"views" json:"views"`
	Url        string `db:"url" json:"url"`
}

type Exercises []Exercise

func (es ExerciseStatement) QueryExercises() (Exercises, error) {
	var exercises []Exercise
	stmt := `
		WITH numbered AS (
			SELECT
				exercise.id,
				exercise.name,
				muscle.name AS target,
				focus.name AS focus,
				equipment.name AS equipment,
				force.name AS force,
				experience.name AS experience,
				exercise.views,
				exercise.url,
				ROW_NUMBER() OVER (PARTITION BY muscle.name ORDER BY RANDOM()) AS rn
			FROM exercise
			LEFT JOIN muscle ON target_id=muscle.id 
			LEFT JOIN focus ON exercise.focus_id=focus.id
			LEFT JOIN equipment ON exercise.equipment_id=equipment.id
			LEFT JOIN force ON exercise.force_id=force.id
			LEFT JOIN experience ON exercise.experience_id=experience.id
			WHERE views >= $1
			` + es.Target + `
			` + es.Focus + `
			` + es.Equipment + `
			` + es.Force + `
			` + es.Experience + `
		)
	SELECT 
		id,
		name,
		target,
		focus,
		equipment,
		force,
		experience,
		views,
		url
	FROM numbered
	`
	if es.BlocksPerTarget > 0 {
		log.Printf("Ordering by random")
		stmt += fmt.Sprintf("\nWHERE rn <= %d\n", es.BlocksPerTarget)
	}
	stmt += es.OrderBy.SqlStmt()
	if es.Limit > 0 {
		stmt += fmt.Sprintf("\nLIMIT %d\n", es.Limit)
	}
	log.Printf("%s", stmt)

	err := globals.DB.Select(&exercises, stmt, es.MinViews)
	return exercises, err
}

func (e Exercises) TargetMap() map[string]Exercises {
	exerciseMap := make(map[string]Exercises)

	for _, e := range e {
		exerciseMap[e.Target] = append(exerciseMap[e.Target], e)
	}
	return exerciseMap
}

func (e Exercises) Shuffle() Exercises {
	rand.Shuffle(len(e), func(i, j int) {
		e[i], e[j] = e[j], e[i]
	})
	return e
}
