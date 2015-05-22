as yet unclassified
createComponent: aComponentClass 

	| newComponent |
	newComponent := aComponentClass new.
	self components at: aComponentClass put: newComponent.
	^ newComponent.

	