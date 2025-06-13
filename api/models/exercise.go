package models

type Exercise struct {
	Name       string
	Target     string
	Focus      string
	Equipment  string
	Force      string
	Experience string
	Views      string
	Endpoint   string
}

type ExerciseMan struct {
	Exercises []Exercise
}
