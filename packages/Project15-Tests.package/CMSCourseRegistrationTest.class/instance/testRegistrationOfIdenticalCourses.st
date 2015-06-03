running
testRegistrationOfIdenticalCourses

	| courseA courseB |
	courseA := CMSCourse new.
	courseB := CMSCourse new.

	self deny: (courseA < courseB).
	self deny: (courseA > courseB).
	self deny: (courseA = courseB).

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