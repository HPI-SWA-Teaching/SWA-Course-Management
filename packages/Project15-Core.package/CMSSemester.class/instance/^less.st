comparing
< aCMSSemester

	self year < aCMSSemester year ifTrue: [^true]
	ifFalse: [self year > aCMSSemester year ifTrue: [^false]
		ifFalse: [^ self winter not & aCMSSemester winter]]