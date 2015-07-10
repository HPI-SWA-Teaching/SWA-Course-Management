as yet unclassified
initialize

	self minute: 59;
		hour: 23;
		day: 31;
		month: (CMSSemester currentSemester winter ifTrue: [3] ifFalse: [9]);
		year: (CMSSemester currentSemester year + 
				(CMSSemester currentSemester winter ifTrue: [1] ifFalse: [0]))
