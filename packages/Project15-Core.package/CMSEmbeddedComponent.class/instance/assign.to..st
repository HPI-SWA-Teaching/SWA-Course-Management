switching components
assign: aClass to: anObject

	self rootComponent
		setMainContentTo: CMSAssignmentComponent
		preparedBy: [:component |
			component
				prepareAssignmentFor: anObject
				assining: aClass
				backWith: [:comp | comp view: anObject]]