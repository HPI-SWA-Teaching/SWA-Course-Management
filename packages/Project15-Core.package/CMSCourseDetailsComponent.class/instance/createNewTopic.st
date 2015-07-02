as yet unclassified
createNewTopic

	self rootComponent
		setMainContentTo: CMSNewEditingComponent
		preparedBy: [ :component |
			component
				editedObject: (CMSTopic new course: self course);
				originalObject: nil]