loggingin
validateLogin 
	
	| user userDatabase|
	userDatabase := CMSDatabase userDb.
	(self username notEmpty)
		ifTrue: [
			(userDatabase includesKey: self username asSymbol)
				ifTrue: [self answer: (userDatabase at: self username asSymbol)]
				ifFalse: [
					user := CMSUser named: self username. 
					CMSDatabase registerUser: user.
					self answer: user
				]
			]
		ifFalse: [self loginFailed].