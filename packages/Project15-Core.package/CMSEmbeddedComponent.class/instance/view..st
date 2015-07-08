switching components
view: something

	self rootComponent
		setMainContentTo: CMSDetailsComponent
		preparedBy: [:component | component data: something]