as yet unclassified
createNewCourse

	self rootComponent
		setMainContentTo: CMSCourseEditingComponent
		preparedBy: [ :component | component setUpNewCourse]