running
testGroupCreationAndDeletion

	| course group |
	course := CMSCourse new.

	group := course createNewGroup.

	self deny: course groups isEmpty.

	course removeGroup: group.

	self assert: course groups isEmpty.