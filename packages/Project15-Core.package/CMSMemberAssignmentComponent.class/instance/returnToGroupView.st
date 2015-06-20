rendering
returnToGroupView

	self rootComponent
		setMainContentTo: CMSGroupDetailsComponent
		preparedBy: [ :component | component group: self group]