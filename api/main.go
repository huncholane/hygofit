package main

import (
	"github.com/huncholane/hygofit/api/globals"
	"github.com/huncholane/hygofit/api/routes"
)

func main() {
	globals.Init()
	r := routes.SetupRouter()
	r.Run() // :8080
}
