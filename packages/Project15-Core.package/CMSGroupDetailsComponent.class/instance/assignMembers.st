as yet unclassified
assignMembers

	self rootComponent
		setMainContentTo: CMSMemberAssignmentComponent
		preparedBy: [ :component |
			component group: (self group);
				rebuildCaption]