messagetypes
infoMessage: aString

	self messageText: aString content.
	self messageType: 'info' content.
	self wasShown: false.