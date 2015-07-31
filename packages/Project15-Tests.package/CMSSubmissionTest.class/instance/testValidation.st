running
testValidation

	| submission |
	submission := CMSSubmission new.

	self deny: submission validate isEmpty.

	submission title content: 'Title'.

	self deny: submission validate isEmpty.

	submission description content: 'Description'.

	self assert: submission validate isEmpty.

	submission deadline day: 0.

	self deny: submission validate isEmpty