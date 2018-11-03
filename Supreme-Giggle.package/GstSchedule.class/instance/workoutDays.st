accessing
workoutDays
	"Returns the day of week indices that we should do GST on."

	^ workoutDays ifNil: [ workoutDays := self defaultWorkoutDays ]