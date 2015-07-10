validation
validate

	self title content 
		ifEmpty: [^ CMSMessageComponent errorMissingCourseTitle].

	self description content 
		ifEmpty: [^ CMSMessageComponent errorMissingCourseDescription].
	^ ''.