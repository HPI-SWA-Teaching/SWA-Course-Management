accessing
checkLoginInformation: user

	(self registeredUsers includesKey: user username) ifTrue: [
		((self registeredUsers at: user username) pass = user pass)
			ifTrue: [ user isAdmin: (self registeredUsers at: user username) isAdmin.
				^ true]
		ifFalse: [^ false]]
	ifFalse: [^ false]