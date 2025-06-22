package models

type WorkoutBlock struct {
	Exercise
	Block
}

type Workout []WorkoutBlock

var TimedNames = map[string]struct{}{
	"Plank": {},
}

var HighRepNames = map[string]struct{}{
	"Hanging Leg Raise":            {},
	"Floor Crunch (legs on bench)": {},
}

func BuildWorkout(exercises Exercises, blocks Blocks) Workout {
	exercises = exercises.Shuffle()
	bm := blocks.Map()
	var workout Workout
	for _, e := range exercises {
		var b Block
		if _, m := TimedNames[e.Name]; m {
			b = bm.Timed.Random()
		} else if e.Equipment == "Bodyweight" {
			b = bm.Bodyweight.Random()
		} else {
			b = bm.Normal.Random()
		}
		workout = append(workout, WorkoutBlock{e, b})
	}
	return workout
}
