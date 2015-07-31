as yet unclassified
showCourse

	self rootComponent
		setMainContentTo: CMSCourseDetailsComponent
		preparedBy: [ :component | component course: self group course]