package handlers

import (
	"fmt"
	"math/rand"
	"slices"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/golib/querytools"
	"github.com/huncholane/hygofit/api/globals"
)

type BlockExercise struct {
	Exercise
	Quantity int    `json:"quantity"`
	Unit     string `json:"unit"`
}

type Block struct {
	Exercises []BlockExercise
}

type Workout struct {
	Blocks []Block
}

func selectExercises(exercises Exercises, blockspertarget int) []Exercise {
	target_map := exercises.TargetMap()
	var raw []Exercise
	for key, exercises := range target_map {
		println("There are", len(exercises), "to chose from for", key)
		for range blockspertarget {
			if len(exercises) == 0 {
				continue
			}
			ind := rand.Intn(len(exercises))
			e := exercises[ind]
			println("Adding", ind, e.Name)
			raw = append(raw, e)
			exercises = slices.Delete(exercises, ind, ind+1)
		}
	}
	rand.Shuffle(len(raw), func(i, j int) {
		raw[i], raw[j] = raw[j], raw[i]
	})
	return raw
}

func buildWorkout(exercises Exercises, blockspertarget, minblocksize int) Workout {
	var workout Workout
	return workout
}

func extractWorkouts(c *gin.Context) ([]Exercise, error) {
	limit, _ := querytools.QueryInt(c, "limit", 0)
	min_views, _ := querytools.QueryInt(c, "min_views", 1000000)
	target := querytools.QueryInToSql(c, "AND", "muscle.name", "target", "all")
	focus := querytools.QueryInToSql(c, "AND", "focus.name", "focus", "all")
	equipment := querytools.QueryInToSql(c, "AND", "equipment.name", "equipment", "all")
	force := querytools.QueryInToSql(c, "AND", "force.name", "force", "all")
	experience := querytools.QueryInToSql(c, "AND", "experience.name", "experience", "all")

	var exercises []Exercise
	stmt := `SELECT
	exercise.id,
	exercise.name,
	muscle.name AS target,
	focus.name AS focus,
	equipment.name AS equipment,
	force.name AS force,
	experience.name AS experience,
	exercise.views,
	exercise.url
FROM exercise
LEFT JOIN muscle ON target_id=muscle.id 
LEFT JOIN focus ON exercise.focus_id=focus.id
LEFT JOIN equipment ON exercise.equipment_id=equipment.id
LEFT JOIN force ON exercise.force_id=force.id
LEFT JOIN experience ON exercise.experience_id=experience.id
WHERE views>=$1
	` + target + `
	` + focus + `
	` + equipment + `
	` + force + `
	` + experience + ` `
	if limit > 0 {
		stmt += fmt.Sprintf("LIMIT %d;", limit)
	} else {
		stmt += ";"
	}

	err := globals.DB.Select(&exercises, stmt, min_views)
	if err != nil {
		fmt.Println("Error:", err)
		c.JSON(500, gin.H{"message": "Database error"})
		return nil, err
	}

	return exercises, nil
}

func GetWorkoutExercises(c *gin.Context) {
	blockspertarget, _ := querytools.QueryInt(c, "blockspertarget", 4)
	exercises, err := extractWorkouts(c)
	if err != nil {
		return
	}
	exercises = selectExercises(exercises, blockspertarget)
	c.JSON(200, exercises)
}

func GetWorkout(c *gin.Context) {
	blockspertarget, _ := querytools.QueryInt(c, "blockspertarget", 4)
	minblocksize, _ := querytools.QueryInt(c, "minblocksize", 4)
	exercises, err := extractWorkouts(c)
	if err != nil {
		return
	}
	exercises = selectExercises(exercises, blockspertarget)
	buildWorkout(exercises, blockspertarget, minblocksize)
	c.JSON(200, exercises)
}
