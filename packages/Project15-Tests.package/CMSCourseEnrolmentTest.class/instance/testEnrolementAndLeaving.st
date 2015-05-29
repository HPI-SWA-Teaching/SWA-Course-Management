running
testEnrolementAndLeaving

	| course participant |
	course := CMSCourse new.
	participant := CMSUser new.

	self assert: participant courses isEmpty.
	self assert: course participents isEmpty.

	participant addCourse: course.

	self assert: (participant courses includes: course).
	self assert: (course participents includes: participant).

	participant remove: course.

	self deny: (participant courses includes: course).
	self deny: (course participents includes: participant)

	