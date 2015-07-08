running
testAutoLeavingGroup

	| course group member |
	course := CMSCourse new.
	group := course createNewGroup.
	member := CMSUser new.
	member addCourse: course.
	group addNewMember: member.

	self assert: (member participatesIn: group).
	self assert: (group isMember: member).

	member leaveCourse: course.

	self deny: (member participatesIn: group).
	self deny: (group isMember: member)