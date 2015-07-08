switching components
editNew: aClass with: aBlock

	self rootComponent
		setMainContentTo: CMSNewEditingComponent
		preparedBy: [:component | component prepareNew: (aBlock value: aClass new)].