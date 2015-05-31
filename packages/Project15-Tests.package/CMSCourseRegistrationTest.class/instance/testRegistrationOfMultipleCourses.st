running
testRegistrationOfMultipleCourses

	| courseA courseB |
	courseA := CMSCourse new title: 'Course A'.
	courseB := CMSCourse new title: 'Course B'.

	self deny: (CMSDatabase courseDb includes: courseA).
	self deny: (CMSDatabase courseDb includes: courseB).

	CMSDatabase registerCourse: courseA.

	self assert: (CMSDatabase courseDb includes: courseA).

	CMSDatabase registerCourse: courseB.

	self assert: (CMSDatabase courseDb includes: courseB).

	CMSDatabase unregisterCourse: courseA.

	self assert: (CMSDatabase courseDb includes: courseB).
	self deny: (CMSDatabase courseDb includes: courseA).

	CMSDatabase unregisterCourse: courseB.

	self deny: (CMSDatabase courseDb includes: courseB).