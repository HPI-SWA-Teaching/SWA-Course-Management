testing
loginAsStudent

	CMSTestData initializeTestData. 
	driver get: 'http://localhost/cms'.

	self usernameTextField sendKeys: 'Hannah Schneider'.
	self submitButton click.