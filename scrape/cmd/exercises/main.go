package main

import (
	"fmt"

	"github.com/huncholane/hygofit-scrape/internal/models"
	"github.com/joho/godotenv"
)

func main() {
	godotenv.Load()
	em, _ := models.ScrapeExercises()
	// models.ScrapeExercises()
	fmt.Println(em.InsertStatement())
}
