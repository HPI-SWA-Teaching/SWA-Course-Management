accessing
topic

	^ topic ifNil: [topic := CMSTopic new. ^topic]