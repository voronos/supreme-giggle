private
labelForDate: aDate
	| labels |
	labels := aDate weekIndexOfYear \\ 2 = 1
		ifTrue: [ #('A' 'B' 'A') ]
		ifFalse: [ #('B' 'A' 'B') ].
	^ (self workoutDays includes: aDate dayOfWeek)
		ifTrue: [ labels at: (self workoutDays indexOf: aDate dayOfWeek) ]
		ifFalse: [ aDate dayOfMonth ]