as yet unclassified
currentSemester

	Date today dayMonthYearDo: [:d :m :y |
		m < 4
			ifTrue: [^self winter: y-1]
			ifFalse: [ m < 10
				ifTrue: [^self summer: y]
				ifFalse: [^self winter: y]]]