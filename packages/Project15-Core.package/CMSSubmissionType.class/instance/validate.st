validating
validate

	self title content ifEmpty: [^false].
	(self extensions content matchesRegex: '\.\w+(\, \.\w+)*') ifFalse: [^false].
	^true 