as yet unclassified
createComponent: aComponentClass 

	| newComponent |
	newComponent := aComponentClass rootedAt: self.
	self components at: aComponentClass put: newComponent.
	^ newComponent

	