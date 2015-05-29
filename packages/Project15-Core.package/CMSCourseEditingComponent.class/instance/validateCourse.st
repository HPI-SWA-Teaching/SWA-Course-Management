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
	"TODO: kurse, die in der Vergangenheit liegen, sollen mittels seperatem Popup durch Admin bestätigt werden".
	self answer: #Save.



	
 