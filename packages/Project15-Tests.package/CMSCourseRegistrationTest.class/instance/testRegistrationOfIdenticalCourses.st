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

	courseA register.

	self assert: (CMSImageDatabase instance courseDb includes: courseA).

	courseB register.

	self assert: (CMSImageDatabase instance courseDb includes: courseB).

	courseA unregister.

	self assert: (CMSImageDatabase instance courseDb includes: courseB).
	self deny: (CMSImageDatabase instance courseDb includes: courseA).

	courseB unregister.

	self deny: (CMSImageDatabase instance courseDb includes: courseB).