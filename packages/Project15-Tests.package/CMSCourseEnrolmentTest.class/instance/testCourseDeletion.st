running
testCourseDeletion

	| course participantA participantB |
	course := CMSCourse new.
	participantA := CMSUser new.
	participantB := CMSUser new.

	CMSImageDatabase instance registerCourse: course.
	participantA addCourse: course.
	participantB addCourse: course.

	self assert: (participantA courses includes: course).
	self assert: (participantB courses includes: course).
	self assert: (course participents includes: participantA).
	self assert: (course participents includes: participantB).

	CMSImageDatabase instance unregisterCourse: course.

	self deny: (participantA courses includes: course).
	self deny: (participantB courses includes: course).
	self deny: (course participents includes: participantA).
	self deny: (course participents includes: participantB)

	