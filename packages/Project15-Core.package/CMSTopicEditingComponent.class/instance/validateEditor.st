rendering
validateEditor

	self topic title isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: 
				(CMSMessageComponent errorMissingTopicTitle).
			^self].
	self topic description isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: 
				(CMSMessageComponent errorMissingTopicDescription).
			^self].
	self answer: #Save.



	
 