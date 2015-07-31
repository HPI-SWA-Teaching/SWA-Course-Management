as yet unclassified
editCourse: aCMSCourse

	self rootComponent
		setMainContentTo: CMSNewEditingComponent
		preparedBy: [ :component | component prepareEditing: aCMSCourse]