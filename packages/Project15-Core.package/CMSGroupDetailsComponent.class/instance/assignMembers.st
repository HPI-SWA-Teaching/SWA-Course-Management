as yet unclassified
assignMembers

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSMemberAssignmentComponent)
			group: self group)