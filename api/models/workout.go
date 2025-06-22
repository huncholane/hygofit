package models

type WorkoutBlock struct {
	Exercise
	Block
}

type Workout []WorkoutBlock

func BuildWorkout(exercises Exercises, blocks Blocks) Workout {
	exercises = exercises.Shuffle()
	var workout Workout
	i := 0
	for i < len(exercises) {
		workout = append(workout, WorkoutBlock{exercises[i], blocks.Random()})
		i++
	}
	return workout
}
