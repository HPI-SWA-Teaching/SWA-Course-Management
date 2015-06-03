running
testRegistrationOfMultipleCourses

	| courseA courseB |
	courseA := CMSCourse new title: 'Course A'.
	courseB := CMSCourse new title: 'Course B'.

	self deny: (CMSImageDatabase instance courseDb includes: courseA).
	self deny: (CMSImageDatabase instance courseDb includes: courseB).

	CMSImageDatabase instance registerCourse: courseA.

	self assert: (CMSImageDatabase instance courseDb includes: courseA).

	CMSImageDatabase instance registerCourse: courseB.

	self assert: (CMSImageDatabase instance courseDb includes: courseB).

	CMSImageDatabase instance unregisterCourse: courseA.

	self assert: (CMSImageDatabase instance courseDb includes: courseB).
	self deny: (CMSImageDatabase instance courseDb includes: courseA).

	CMSImageDatabase instance unregisterCourse: courseB.

	self deny: (CMSImageDatabase instance courseDb includes: courseB).