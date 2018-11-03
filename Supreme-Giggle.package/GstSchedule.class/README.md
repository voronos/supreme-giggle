I build a calendar visualization to mark the days and exercises to do for Gymnastic Strength Training.

Example:
(GstSchedule new workoutDays: #(2 4 6); buildCalendarVisualization: (Year year: 2019)) in: [ :v | 
	RTPNGExporter new fileName: '/home/mnelson/Pictures/calendarExport.png';  withScale; builder: v; exportToFile. v ]

