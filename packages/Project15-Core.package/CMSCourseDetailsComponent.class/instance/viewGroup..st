as yet unclassified
viewGroup: aCMSGroup

	CMSGroupDetailsComponent caption: ((aCMSGroup course title asString),
		 ':',
		 (aCMSGroup title asString) ).
	self rootComponent
		setMainContentTo: CMSGroupDetailsComponent
		preparedBy: [ :component | component group: aCMSGroup. ]