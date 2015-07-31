running
testValidDay

	deadlineA day: 0.

	self deny: deadlineA validate isEmpty.

	deadlineA day: 100.

	self deny: deadlineA validate isEmpty.

	deadlineA day: 28.

	self assert: deadlineA validate isEmpty.

	deadlineA day: 31;
		month: 1.

	self assert: deadlineA validate isEmpty.

	deadlineA day: 1.

	self assert: deadlineA validate isEmpty