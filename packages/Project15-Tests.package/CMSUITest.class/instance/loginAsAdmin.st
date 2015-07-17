testing
loginAsAdmin

	CMSTestData initializeTestData. 
	driver get: 'http://localhost/cms'.
	
	self usernameTextField sendKeys: 'Admin'.
	self submitButton click.