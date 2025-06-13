package handlers

import (
	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/globals"
	_ "github.com/lib/pq"
)

func GetExercises(c *gin.Context) {
	var exercises []struct {
		ID         int    `db:"id"`
		Name       string `db:"name"`
		Target     string `db:"target"`
		Focus      string `db:"focus"`
		Equipment  string `db:"equipment"`
		Force      string `db:"force"`
		Experience string `db:"experience"`
		Views      int    `db:"views"`
		Url        string `db:"url"`
	}

	err := globals.DB.Select(&exercises, `SELECT
			exercise.id,
			exersise.name,
			target.name AS equipment target,
			focus.name AS equipment focus,
			equipment.name AS equipment,
			force.name AS force,
			experience.name AS experience,
			exercise.views,
			exercise.url
		FROM exercise 
		LEFT JOIN target ON target_id=target.id 
		LEFT JOIN focus ON focus_id=focus.id
		LEFT JOIN equipment ON equipment_id=equipment.id
		LEFT JOIN force ON force_id=force.id
		LEFT JOIN experience ON experience_id=experience.id
		;`)
	if err != nil {
		c.JSON(500, gin.H{"message": "Database error"})
		return
	}

	c.JSON(200, exercises)
}
