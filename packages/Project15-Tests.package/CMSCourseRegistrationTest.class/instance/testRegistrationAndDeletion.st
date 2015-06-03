running
testRegistrationAndDeletion

	| course |
	course := CMSCourse new.

	self deny: (CMSImageDatabase instance courseDb includes: course).

	CMSImageDatabase instance registerCourse: course.

	self assert: (CMSImageDatabase instance courseDb includes: course).

	CMSImageDatabase instance unregisterCourse: course.

	self deny: (CMSImageDatabase instance courseDb includes: course).