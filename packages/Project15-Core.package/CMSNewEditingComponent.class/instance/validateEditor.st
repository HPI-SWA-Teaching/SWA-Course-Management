validating
validateEditor

	| message isValid|
	message := self editedObject validate.
	isValid := message isEmpty.

	isValid 
		ifTrue:  [self session messageComponent infoMessage: (CMSMessageComponent infoSaveObject: self editedObject).]
		ifFalse: [self session messageComponent errorMessage: message].
	^ isValid.
	