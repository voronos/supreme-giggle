private
buildRTLabelForDate
	^ RTStyledLabel new
		in: [ :label | 
			label
				bold;
				text: [ :d | self labelForDate: d ];
				color: [ :d | 
					(self workoutDays includes: d dayOfWeek)
						ifTrue: [ Color black ]
						ifFalse: [ Color gray alpha: 0.8 ] ] ]