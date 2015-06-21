validating
validateEditor

	self topic title isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingTopicTitle).
			^false].
	self topic description isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingTopicDescription).
			^false].
	^ true



	
 