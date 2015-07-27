accessing
roleAsString
	
	self isAdmin 
		ifTrue: [^ 'Admin'] 
		ifFalse: [^ 'Student']
