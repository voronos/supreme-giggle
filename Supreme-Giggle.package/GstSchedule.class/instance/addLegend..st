adding
addLegend: aRTCalendarBuilder
	| lb color|
	color := Color black.
	lb := RTLegendBuilder new.
	lb view: aRTCalendarBuilder view.
	lb addColoredText: 'GST Workout Schedule' color: color.
	lb addColoredText: 'A: FL, sPL, HBP, RC' color: color.
	lb addColoredText: 'B: MN, SL, SLS' color: color.
	lb build