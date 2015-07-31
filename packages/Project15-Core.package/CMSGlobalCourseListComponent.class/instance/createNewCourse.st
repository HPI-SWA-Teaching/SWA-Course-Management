as yet unclassified
createNewCourse

	self rootComponent
		setMainContentTo: CMSNewEditingComponent
		preparedBy: [ :component |
			component editedObject: CMSCourse new;
				originalObject: nil]