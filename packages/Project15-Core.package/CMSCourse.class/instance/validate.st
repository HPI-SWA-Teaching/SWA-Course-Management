validation
validate

	self title content isEmpty ifTrue: [^'Bitte Titel eingeben'].
	self description content isEmpty ifTrue: [^'Bitte Beschreibung eingeben'].
	^''