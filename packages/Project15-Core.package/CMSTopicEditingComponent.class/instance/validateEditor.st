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
	(self course topics includesKey: (self topic title))
		ifTrue: [
			self session messageComponent errorMessage: 'Ein Topic mit dem Titel existiert bereits!'.
			^false].
	^ true



	
 