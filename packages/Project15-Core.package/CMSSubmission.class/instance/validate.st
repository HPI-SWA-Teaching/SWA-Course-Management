as yet unclassified
validate

	self title content ifEmpty: [^ 'Bitte Titel eingeben'].
	self description content ifEmpty: [^ 'Bitte Beschreibung eingeben'].
	^ self deadline validate