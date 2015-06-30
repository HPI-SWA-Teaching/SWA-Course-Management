as yet unclassified
viewTopic: aCMSTopic

	CMSTopicEditingComponent caption: ((aCMSTopic course title asString),
		 ':',
		 (aCMSTopic title asString)).
	self rootComponent
		setMainContentTo: CMSTopicEditingComponent
		preparedBy: [ :component | component course: aCMSTopic course. 
			component topic: aCMSTopic.].