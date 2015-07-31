running
testValidation

	| course |
	course := CMSCourse new.

	self deny: course validate isEmpty.

	course title content: 'Title'.

	self deny: course validate isEmpty.

	course description content: 'Description'.

	self assert: course validate isEmpty.

	course title content: ''.

	self deny: course validate isEmpty