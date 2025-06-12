package main

import (
	"github.com/huncholane/hygofit-scrape/internal/exercises"
	"github.com/joho/godotenv"
)

func main() {
	godotenv.Load()
	exercises.ScrapeExercises()
}
