package models

type Muscle struct {
	ID   int    `db:"id"`
	Name string `db:"name"`
	Url  string `db:"url"`
}

type MuscleMan struct {
	muscles []Muscle
}
