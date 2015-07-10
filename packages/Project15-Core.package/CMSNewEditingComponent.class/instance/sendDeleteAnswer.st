as yet unclassified
sendDeleteAnswer

	self originalObject ifNotNil: [
		self originalObject unregister.
		self session messageComponent infoMessage: (CMSMessageComponent infoDeleteObject: self originalObject)].

	self changeBack
	