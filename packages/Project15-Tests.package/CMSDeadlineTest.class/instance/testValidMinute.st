running
testValidMinute

	deadlineA minute: 0.

	self assert: deadlineA validate isEmpty.

	deadlineA minute: 100.

	self deny: deadlineA validate isEmpty.

	deadlineA minute: 59.

	self assert: deadlineA validate isEmpty.

	deadlineA minute: 0