validation
validate
	
	| user |
	self username isEmpty 
		ifTrue: [self answer: false].
	(CMSImageDatabase instance isUserRegistered: self username)
		ifTrue: [self answer: true.]
		ifFalse: [
			user := CMSUser named: self username. 
			CMSImageDatabase instance registerUser: user.
			self answer: true]