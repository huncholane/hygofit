package routes

import (
	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/handlers"
)

func SetupRouter() *gin.Engine {
	r := gin.Default()

	api := r.Group("/api")
	{
		api.GET("/ping", handlers.Ping)
		api.GET("/exercises", handlers.GetExercises)
	}

	return r
}
