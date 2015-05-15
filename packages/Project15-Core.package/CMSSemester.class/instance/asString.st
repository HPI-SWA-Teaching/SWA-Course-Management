accessing
asString

	^ (self winter ifTrue: ['WS'] ifFalse: ['SS']), ' ', self year asString,
		(self winter ifTrue: ['/', (self year + 1 \\ 100) asTwoCharacterString] ifFalse: [''])