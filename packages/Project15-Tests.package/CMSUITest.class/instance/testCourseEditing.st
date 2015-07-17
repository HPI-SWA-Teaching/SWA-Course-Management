testing
testCourseEditing

	self loginAsAdmin.
	self globalCourseList click.

	self editCourseButton click.

	self modifyCourse.
	self saveButton click.

	self assert: self infoMessage isDisplayed.

	self editCourseButton click.
	
	self assert: (self courseEditingTitle getAttribute: 'value') = 'ATestCourse'.
	self assert: (self courseEditingYear  getAttribute: 'value') = '2014'.
	self assert: (self courseEditingInformations  getText) = 'Lorem Ipsum'.

	self recoverCourse.
	self saveButton click.