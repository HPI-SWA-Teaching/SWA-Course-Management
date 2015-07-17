as yet unclassified
viewCourse: aCMSCourse

	self rootComponent
		setMainContentTo: CMSCourseDetailsComponent
		preparedBy: [ :component | component course: aCMSCourse]