package handlers

import (
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/globals"
)

type Options struct {
	MuscleGroups []string `json:"muscleGroups"`
	Equipment    []string `json:"equipment"`
	Experience   []string `json:"experience"`
	Force        []string `json:"force"`
	Focus        []string `json:"focus"`
}

func extractOption(c *gin.Context, table string) ([]string, error) {
	stmt := fmt.Sprintf("SELECT name FROM %s", table)
	var val []string
	err := globals.DB.Select(&val, stmt)
	if err != nil {
		msg := fmt.Sprintf("Databse error with %s", table)
		c.JSON(500, msg)
		return nil, err
	}
	return val, nil
}

func GetOptions(c *gin.Context) {
	var options Options
	var err error
	if options.MuscleGroups, err = extractOption(c, "muscle"); err != nil {
		return
	}
	if options.Equipment, err = extractOption(c, "equipment"); err != nil {
		return
	}
	if options.Experience, err = extractOption(c, "experience"); err != nil {
		return
	}
	if options.Force, err = extractOption(c, "force"); err != nil {
		return
	}
	if options.Focus, err = extractOption(c, "focus"); err != nil {
		return
	}
	c.JSON(200, options)
}
