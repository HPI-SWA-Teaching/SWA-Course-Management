as yet unclassified
assignMembers: aCMSGroup

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSMemberAssignmentComponent)
			group: aCMSGroup)