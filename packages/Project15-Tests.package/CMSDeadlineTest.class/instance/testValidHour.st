running
testValidHour

	deadlineA hour: 0.

	self assert: deadlineA validate isEmpty.

	deadlineA hour: 100.

	self deny: deadlineA validate isEmpty.

	deadlineA hour: 23.

	self assert: deadlineA validate isEmpty.

	deadlineA hour: 0