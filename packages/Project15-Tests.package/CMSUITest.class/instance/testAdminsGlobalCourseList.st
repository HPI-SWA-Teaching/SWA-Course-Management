testing
testAdminsGlobalCourseList

	self loginAsAdmin. 
	self globalCourseList click.
	
	self assert: self createCourseButton isDisplayed. 
	self assert: self courseViewButton isDisplayed. 
	self assert: self editCourseButton isDisplayed.
	self assert: self leaveCourseButton isDisplayed. 

	self leaveCourseButton click.
	
	self assert: self infoMessage isDisplayed. 
	self assert: self courseEnrollButton isDisplayed.
	self assert: self courseViewButton isDisplayed.
	self assert: self createCourseButton isDisplayed.
	self assert: self editCourseButton isDisplayed.

	self courseEnrollButton click.

	self assert: self infoMessage isDisplayed.