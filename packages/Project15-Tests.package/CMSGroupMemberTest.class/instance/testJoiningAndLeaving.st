running
testJoiningAndLeaving

	| group memberA memberB |
	group := CMSGroup new.
	memberA := CMSUser new.
	memberB := CMSUser new.

	self assert: group members isEmpty.

	group addNewMember: memberA.

	self assert: (group isMember: memberA).
	self assert: (memberA participatesIn: group).
	self deny: (group isMember: memberB).
	self deny: (memberB participatesIn: group).

	group addNewMember: memberB.

	self assert: (group isMember: memberA).
	self assert: (memberA participatesIn: group).
	self assert: (group isMember: memberB).
	self assert: (memberB participatesIn: group).

	group removeGroupMember: memberA.
	group removeGroupMember: memberB.

	self assert: group members isEmpty.
	self deny: (memberA participatesIn: group).
	self deny: (memberB participatesIn: group).
