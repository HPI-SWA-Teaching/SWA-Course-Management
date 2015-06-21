as yet unclassified
assignMembers

	CMSMemberAssignmentComponent caption: 'Mitglieder der Gruppe  ',
		self group title asString,
		' bearbeiten'.
	self rootComponent
		setMainContentTo: CMSMemberAssignmentComponent
		preparedBy: [ :component | component group: self group]