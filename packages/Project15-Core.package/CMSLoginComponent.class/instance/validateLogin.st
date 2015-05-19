loggingin
validateLogin 
	
	(self username notNil)
		ifTrue: [self session login: self username. self answer: self username]
		ifFalse: [self loginFailed]
	

