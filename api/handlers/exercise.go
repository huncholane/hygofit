package handlers

import (
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/models"
	_ "github.com/lib/pq"
)

func GetExercises(c *gin.Context) {
	exercises, err := models.ExerciseStatementFromContext(c).QueryExercises()
	if err != nil {
		fmt.Println("Error:", err)
		c.JSON(500, gin.H{"message": "Database error"})
		return
	}

	c.JSON(200, exercises)
}
