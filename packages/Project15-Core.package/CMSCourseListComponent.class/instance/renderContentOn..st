as yet unclassified
renderContentOn: html

	html render: self session messageComponent.
	self shouldRenderNewButton
		ifTrue: [self renderNewCourseButtonOn: html].
	html table: [
		self renderTableHeadersOn: html.
		self renderCoursesOn: html].
