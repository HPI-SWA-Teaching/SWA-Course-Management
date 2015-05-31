running
testDisbanding

	| group memberA memberB |
	group := CMSGroup new.
	memberA := CMSUser new.
	memberB := CMSUser new.

	group addNewMember: memberA.
	group addNewMember: memberB.

	self assert: (group isMember: memberA).
	self assert: (memberA participatesIn: group).
	self assert: (group isMember: memberB).
	self assert: (memberB participatesIn: group).

	group disband.

	self deny: (group isMember: memberA).
	self deny: (memberA participatesIn: group).
	self deny: (group isMember: memberB).
	self deny: (memberB participatesIn: group).
