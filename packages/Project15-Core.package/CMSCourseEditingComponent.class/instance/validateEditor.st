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
	"TODO: kurse, die in der Vergangenheit liegen, sollen mittels seperatem Popup durch Admin bestätigt werden".
	^true


	
 