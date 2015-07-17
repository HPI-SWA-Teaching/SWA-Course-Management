testing
testLogout

	self loginAsAdmin.

	self logoutButton click.

	self assert: self usernameTextField isDisplayed.
	self assert: self submitButton isDisplayed.  

	self loginAsStudent.

	self logoutButton click.

	self assert: self usernameTextField isDisplayed.
	self assert: self submitButton isDisplayed. 
