validation
validate

	self title content 
		ifEmpty: [^ CMSMessageComponent errorMissingTopicTitle].

	self description content
		ifEmpty: [^ CMSMessageComponent errorMissingTopicDescription].
	^ ''.