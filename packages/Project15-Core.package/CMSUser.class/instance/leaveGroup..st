accessing
leaveGroup: aGroup

	self groups remove: aGroup ifAbsent: [^ false].
	^ true