initializing
initialize
	"Standart: Ende des 1. oder 3. Quartals, anhand laufendem Semester"

	self minute: 59;
		hour: 23;
		month: (CMSSemester currentSemester winter ifTrue: [3] ifFalse: [9]);
		year: (CMSSemester currentSemester year + 
				(CMSSemester currentSemester winter ifTrue: [1] ifFalse: [0]));
		day: (Date daysInMonth: self month forYear: self year)
