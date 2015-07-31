running
testRegistration

	| course submission |
	course := CMSCourse new.
	submission := CMSSubmission new
		course: course.

	self deny: (course submissions includes: submission).

	submission register.

	self assert: (course submissions includes: submission).

	submission unregister.

	self deny: (course submissions includes: submission)