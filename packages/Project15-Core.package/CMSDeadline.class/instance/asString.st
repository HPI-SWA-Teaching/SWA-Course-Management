as yet unclassified
asString

	^ self day asTwoCharacterString, '. ',
		self month asTwoCharacterString, '. ',
		self year, ' - ',
		self hour asTwoCharacterString, ': ',
		self minute asTwoCharacterString