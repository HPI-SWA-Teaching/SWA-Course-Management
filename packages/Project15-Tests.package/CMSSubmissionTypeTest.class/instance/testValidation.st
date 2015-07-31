running
testValidation

	| type |
	type := CMSSubmissionType new.

	self deny: type validate isEmpty.

	type title content: 'Title'.

	self deny: type validate isEmpty.

	type extensions content: '.txt'.

	self assert: type validate isEmpty.

	type extensions content: 'Wrong!'.

	self deny: type validate isEmpty.

	type extensions content: '.txt, .ext'.

	self assert: type validate isEmpty.

	type title content: ''.

	self deny: type validate isEmpty