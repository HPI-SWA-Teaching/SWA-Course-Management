accessing
findUserByName: aUsername

	^ (self userDb at: self username asSymbol)