as yet unclassified
createNewTopic

	self rootComponent
		setMainContentTo: CMSTopicEditingComponent
		preparedBy: [ :component |
			component setUpNewTopic;
				course: self course]