accessing
setMainContentTo: aCMSEmbeddedComponentClass preparedBy: aBlock

	| loadedComponent |
	loadedComponent := self loadComponent: aCMSEmbeddedComponentClass.
	aBlock value: loadedComponent.
	self mainContent: loadedComponent