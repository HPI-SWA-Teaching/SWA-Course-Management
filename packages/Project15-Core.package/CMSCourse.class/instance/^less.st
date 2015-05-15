comparing
< aCMSCourse

	self term = aCMSCourse term
		ifTrue: [^ self title < aCMSCourse title]
		ifFalse: [^ self term < aCMSCourse term]