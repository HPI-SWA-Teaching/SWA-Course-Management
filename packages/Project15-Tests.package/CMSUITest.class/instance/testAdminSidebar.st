testing
testAdminSidebar

	self loginAsAdmin. 
	
	self assert: self userList isDisplayed.
	self assert: self userProfile isDisplayed.	
	self assert: self globalCourseList isDisplayed.
	self assert: self submissions isDisplayed.