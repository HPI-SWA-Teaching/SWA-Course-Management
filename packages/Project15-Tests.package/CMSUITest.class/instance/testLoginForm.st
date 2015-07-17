testing
testLoginForm

	driver get: 'http://localhost/cms'.
	
	self assert: self usernameTextField isDisplayed.
	self assert: self submitButton isDisplayed.
