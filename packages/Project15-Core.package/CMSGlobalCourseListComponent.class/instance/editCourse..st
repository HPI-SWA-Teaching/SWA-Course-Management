as yet unclassified
editCourse: aCMSCourse

	self rootComponent
		setMainContentTo: CMSCourseEditingComponent
		preparedBy: [ :component | component setUpWithCourse: aCMSCourse]