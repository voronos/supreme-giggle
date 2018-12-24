examples
gtExample
	"(GstSchedule new workoutDays: #(2 4 6); buildCalendarVisualization: (Year year: 2019)) in: [ :v | 
	RTPNGExporter new fileName: '/home/mnelson/Pictures/calendarExport.png';  withScale; builder: v; exportToFile. v ]"

	<gtExample>
	^ self new
		workoutDays: #(2 4 6);
		buildCalendarVisualization: (Year year: 2019)