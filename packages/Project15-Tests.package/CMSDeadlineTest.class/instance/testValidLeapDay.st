running
testValidLeapDay

	deadlineA day: 29;
		month: 2;
		year: 2001.

	self deny: deadlineA validate isEmpty.

	deadlineA year: 2000.

	self assert: deadlineA validate isEmpty.

	deadlineA day: 1;
		month: 1;
		year: 0