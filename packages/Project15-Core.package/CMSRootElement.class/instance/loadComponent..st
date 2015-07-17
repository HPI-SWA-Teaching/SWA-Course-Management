component
loadComponent: aComponentClass

	^ self components at: aComponentClass
		ifAbsent: [self createComponent: aComponentClass]