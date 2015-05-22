as yet unclassified
renderContentOn: html
	
	self session user isAdmin 
		ifTrue: [
			self renderNewCourseButtonOn: html.
		].
	html table: [
		self renderTableHeadersOn: html.
		self renderCoursesOn: html
	].
