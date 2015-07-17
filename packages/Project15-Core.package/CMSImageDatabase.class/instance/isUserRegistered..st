accessing
isUserRegistered: aUsername

	^ self userDb includesKey: (aUsername asSymbol)