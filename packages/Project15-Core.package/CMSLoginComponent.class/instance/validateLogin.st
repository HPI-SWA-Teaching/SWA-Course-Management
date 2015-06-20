login
validateLogin 
	
	| user userDatabase|
	userDatabase := CMSImageDatabase instance userDb.
	(self username notEmpty)
		ifTrue: [
			(userDatabase includesKey: self username asSymbol)
				ifTrue: [self answer: (userDatabase at: self username asSymbol)]
				ifFalse: [
					user := CMSUser named: self username. 
					CMSImageDatabase instance registerUser: user.
					self answer: user]]
		ifFalse: [self loginFailed]