testing
testStudentSidebar

	self loginAsStudent. 
	
	self assert: self userProfile isDisplayed.	
	self assert: self globalCourseList isDisplayed.

