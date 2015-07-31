running
testValidMonth

	deadlineA month: 0.

	self should: [deadlineA validate] raise: Error. "Date code is not prepared for invalid month indices!"

	deadlineA month: 100.

	self should: [deadlineA validate] raise: Error.

	deadlineA month: 12.

	self assert: deadlineA validate isEmpty.

	deadlineA month: 1.

	self assert: deadlineA validate isEmpty