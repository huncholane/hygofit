package handlers

import (
	"log"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/models"
)

func GetWorkoutExercises(c *gin.Context) {
	exercises, err := models.ExerciseStatementFromContext(c).QueryExercises()
	if err != nil {
		log.Printf("Unable to get workout exercises: %v", err)
		return
	}
	exercises = exercises.Shuffle()
	c.JSON(200, exercises)
}

func GetWorkout(c *gin.Context) {
	// exercises, err := models.ExerciseStatementFromContext(c).QueryExercises()
	// if err != nil {
	// 	return
	// }
	// exercises = exercises.Shuffle()
	// blocks, err := models.BlockStatementFromContext(c).QueryBlocks()
	// if err != nil {
	// 	log.Printf("unable to query blocks for workout: %v", err)
	// 	c.JSON(500, "Database Error")
	// 	return
	// }
	// exercises = selectExercises(exercises, blockspertarget)
	// workout := buildWorkout(exercises, maxcyclelength, mindifficulty, maxdifficulty)
	// c.JSON(200, workout)
}
