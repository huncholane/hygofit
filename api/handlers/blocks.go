package handlers

import (
	"log"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/models"
)

func GetReps(c *gin.Context) {
	blockStatement := models.BlockStatementFromContext(c)
	reps, err := blockStatement.QueryReps()
	if err != nil {
		log.Printf("failed to query reps: %v", err)
		c.JSON(500, "Database error")
		return
	}
	c.JSON(200, reps)
}

func GetBlocks(c *gin.Context) {
	blockStatement := models.BlockStatementFromContext(c)
	blocks, err := blockStatement.QueryBlocks()
	if err != nil {
		log.Printf("failed to query blocks: %v", err)
		c.JSON(500, "Database error")
		return
	}
	c.JSON(200, blocks)
}
