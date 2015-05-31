running
testCompleteGroupDeletion

	| course group member |
	course := CMSCourse new.
	group := course createNewGroup.
	member := CMSUser new.
	group addNewMember: member.

	self deny: course groups isEmpty.
	self assert: (group isMember: member).
	self assert: (member participatesIn: group).

	course removeGroup: group.

	self assert: course groups isEmpty.
	self deny: (member participatesIn: group)