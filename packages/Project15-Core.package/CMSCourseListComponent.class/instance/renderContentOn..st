as yet unclassified
renderContentOn: html

	self renderNewCourseButtonOn: html.
	html table: [
		self renderTableHeadersOn: html.
		self renderCoursesOn: html]