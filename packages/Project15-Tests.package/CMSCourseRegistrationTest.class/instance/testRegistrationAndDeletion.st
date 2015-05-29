as yet unclassified
testRegistrationAndDeletion

	| course |
	course := CMSCourse new.

	self deny: (CMSDatabase courseDb includes: course).

	CMSDatabase registerCourse: course.

	self assert: (CMSDatabase courseDb includes: course).

	CMSDatabase unregisterCourse: course.

	self deny: (CMSDatabase courseDb includes: course).