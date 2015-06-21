validating
changeBack

	self rootComponent
		setMainContentTo: CMSCourseDetailsComponent
		preparedBy: [ :component | component course: self course]