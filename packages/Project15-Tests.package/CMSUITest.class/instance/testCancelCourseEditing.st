testing
testCancelCourseEditing

	self loginAsAdmin.
	self globalCourseList click.

	self editCourseButton click.
	
	self modifyCourse.
	self courseEditingCancelButton click.

	self editCourseButton click.
	
	self deny: (self courseEditingTitle getAttribute: 'value') = 'ATestCourse'.
	self deny: (self courseEditingYear  getAttribute: 'value') = '2014'.
	self deny: (self courseEditingInformations  getText) = 'Lorem Ipsum'.

	self recoverCourse.
	self saveButton click.