package routes

import (
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/globals"
	"github.com/huncholane/hygofit/api/handlers"
)

func SetupRouter() *gin.Engine {
	r := gin.Default()
	config := cors.DefaultConfig()
	config.AllowOrigins = globals.ALLOWED_HOSTS
	r.Use(cors.New(config))

	api := r.Group("/api")
	{
		api.GET("/exercises", handlers.GetExercises)
		api.GET("/workout/raw", handlers.GetWorkoutExercises)
		api.GET("/workout", handlers.GetWorkout)
		api.GET("/options", handlers.GetOptions)
		api.GET("/reps", handlers.GetReps)
		api.GET("/blocks", handlers.GetBlocks)
	}

	return r
}
