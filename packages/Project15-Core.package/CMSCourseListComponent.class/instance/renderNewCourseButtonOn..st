as yet unclassified
renderNewCourseButtonOn: html

	html anchor callback: [self createNewCourse];
		with: 'New'