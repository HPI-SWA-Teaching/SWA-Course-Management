as yet unclassified
caption

	self originalObject isNil
		ifTrue: [^ self editedObject class singularString, ' anlegen']
		ifFalse: [^ self editedObject class singularString, ' bearbeiten'].
