validating
validateCourse

	self course title isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingCourseTitle).
			^self.
		].
	self course description isEmpty 
		ifTrue: [
			self session messageComponent errorMessage: (CMSMessageComponent errorMissingCourseDescription).
			^self.
		].
	self answer: #Save.



	
 