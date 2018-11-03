as yet unclassified
buildCalendarVisualization: aDateRange
	| b |
	b := RTCalendarBuilder new.
	b dateShape composite: [ :com | com add: self buildRTLabelForDate ].
	b yearShape
		composite: [ :comp | 
			comp
				add:
					(RTLabel new
						color: Color black;
						text: [ :d | d year ];
						height: 20).
			comp add: (RTBox new color: [ Color white alpha: 0.1 ]).
			comp scale: 4 ].
	b monthShape withTextColor: Color black.
	"add:
			(RTStyledLabel new
				text: [ :d | d monthName ];
				color: Color black;
				bold)."
	b showDayNames.
	b dates: aDateRange.
	b build.
	self addLegend: b.
	^ b view