as yet unclassified
assignMembers
 
	self rootComponent
		setMainContentTo: CMSAssignmentComponent
		preparedBy: [ :component | 
			component prepareAssignmentFor: self group assining: CMSUser backTo: self;
				caption: 'Mitglieder der Gruppe  ',
					self group title asString,
					' bearbeiten'.]