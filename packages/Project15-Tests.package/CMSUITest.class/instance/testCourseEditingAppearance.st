testing
testCourseEditingAppearance

	self loginAsAdmin.
	self globalCourseList click.

	self editCourseButton click.

	self assert: self courseEditingTitle isDisplayed.
	self assert: self courseEditingSemesterForm isDisplayed.
	self assert: self courseEditingYear isDisplayed.
	self assert: self courseEditingInformations isDisplayed.
	self assert: self saveButton isDisplayed.
	self assert: self courseEditingCancelButton isDisplayed. 
	self assert: self courseEditingDeleteButton isDisplayed.