validating
validateEditor

	self course title isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingCourseTitle).
			^false].
	self course description isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingCourseDescription).
			^false].
	^true


	
 