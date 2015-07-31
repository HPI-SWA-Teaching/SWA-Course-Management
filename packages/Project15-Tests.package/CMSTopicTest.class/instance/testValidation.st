running
testValidation

	| topic |
	topic := CMSTopic new.

	self deny: topic validate isEmpty.

	topic title content: 'Title'.

	self deny: topic validate isEmpty.

	topic description content: 'Description'.

	self assert: topic validate isEmpty.

	topic title content: ''.

	self deny: topic validate isEmpty