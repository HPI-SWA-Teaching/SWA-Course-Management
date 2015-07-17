testing
testStudentsGlobalCourseList

	self loginAsStudent. 
	self globalCourseList click.

	self assert: self courseViewButton isDisplayed. 

	self leaveCourseButton click.
	
	self assert: self infoMessage isDisplayed.
	self globalCourseList click.

	self assert: self courseEnrollButton isDisplayed.
	self assert: self courseViewButton isDisplayed.

	self courseEnrollButton click.