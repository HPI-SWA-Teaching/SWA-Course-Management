messagetypes
infoMessage: aString

	self messageText: aString.
	self messageType: 'info'.
	self wasShown: false.