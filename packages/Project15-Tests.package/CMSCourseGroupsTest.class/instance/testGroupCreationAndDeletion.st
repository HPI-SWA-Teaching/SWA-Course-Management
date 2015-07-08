running
testGroupCreationAndDeletion

	| course group |
	course := CMSCourse new.

	group := course createNewGroup.

	self deny: course groups isEmpty.

	group unregister.

	self assert: course groups isEmpty.