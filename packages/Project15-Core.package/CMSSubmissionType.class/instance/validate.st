validating
validate

	self title content 
		ifEmpty: [^ CMSMessageComponent errorMissingSubmissionTypeTitle].

	self extensions content 
		ifEmpty: [^ CMSMessageComponent errorMissingSubmissionFileType].

	(self extensions content matchesRegex: '\.\w+(\, \.\w+)*') 
		ifFalse: [^ CMSMessageComponent errorNotValidFileType].
	^ ''. 