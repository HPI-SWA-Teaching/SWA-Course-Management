validation
validate

	self title content isEmpty ifTrue: [^false].
	self description content isEmpty ifTrue: [^false].
	^true