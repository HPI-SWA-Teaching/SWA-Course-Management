as yet unclassified
sendDeleteAnswer

	self originalObject ifNotNil:
		[self originalObject unregister].
	self changeBack
	