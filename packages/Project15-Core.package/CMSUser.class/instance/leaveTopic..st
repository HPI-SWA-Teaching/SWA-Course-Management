accessing
leaveTopic: aCMSTopic

	self topics remove: aCMSTopic ifAbsent: [^ false].
	^ true
