running
testUserAssignment

	| user submission |
	user := CMSUser new.
	submission := CMSSubmission new.

	self deny: (user submissions includes: submission).
	self deny: (submission assignments includes: user).

	user addSubmission: submission.

	self assert: (user submissions includes: submission).
	self assert: (submission assignments includes: user).

	user removeSubmission: submission.

	self deny: (user submissions includes: submission).
	self deny: (submission assignments includes: user).

