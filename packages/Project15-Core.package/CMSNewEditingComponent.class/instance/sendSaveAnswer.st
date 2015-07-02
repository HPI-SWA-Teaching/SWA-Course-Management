as yet unclassified
sendSaveAnswer

	self originalObject
		ifNil: [self editedObject register]
		ifNotNil: [self originalObject copyFrom: self editedObject].
	self changeBack