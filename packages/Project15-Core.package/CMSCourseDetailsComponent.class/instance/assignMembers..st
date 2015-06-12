as yet unclassified
assignMembers: aCMSGroup

	self rootComponent
		setMainContentTo: CMSMemberAssignmentComponent
		preparedBy: [ :component | component group: aCMSGroup]