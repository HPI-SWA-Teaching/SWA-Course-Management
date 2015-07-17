accessing
roleAsString
	
	self isAdmin 
		ifTrue: [^ 'Admin'] 
		ifFalse: [^ 'Úser']
