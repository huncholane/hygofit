package main

import (
	"fmt"

	"github.com/huncholane/hygofit-scrape/internal/muscles"
)

func main() {
	mm, err := muscles.ScrapeMuscles()
	if err != nil {
		fmt.Println(err)
	}
	println(mm.SqlStatement())
}
