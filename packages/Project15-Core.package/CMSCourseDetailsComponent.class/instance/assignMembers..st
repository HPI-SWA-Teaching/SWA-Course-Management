as yet unclassified
assignMembers: aCMSGroup

	self rootComponent
		setMainContentTo: CMSAssignmentComponent
		preparedBy: [ :component | component prepareAssignmentFor: aCMSGroup assining: CMSUser backTo: self]