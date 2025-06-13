package models

import (
	"log"
	"os"

	"github.com/jmoiron/sqlx"
)

type Focus struct {
	Name string
}

func (f *Focus) GetId() int {
	db, err := sqlx.Connect("postgres", os.Getenv("DATABASE_URL"))
	if err != nil {
		log.Fatalln(err)
	}
	defer db.Close()

	var id int
	err = db.Get(&id, "SELECT id FROM focus WHERE name = $1", f.Name)
	if err != nil {
		log.Fatal(err)
	}

	return id
}
