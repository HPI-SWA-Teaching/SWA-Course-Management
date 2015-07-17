accessing
findUserByName: aUsername

	^ (self userDb at: aUsername asSymbol)