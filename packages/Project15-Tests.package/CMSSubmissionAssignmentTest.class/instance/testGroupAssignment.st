running
testGroupAssignment

	| group submission |
	group := CMSGroup new.
	submission := CMSSubmission new.

	self deny: (group submissions includes: submission).
	self deny: (submission groups includes: group).

	group addSubmission: submission.

	self assert: (group submissions includes: submission).
	self assert: (submission groups includes: group).

	group removeSubmission: submission.

	self deny: (group submissions includes: submission).
	self deny: (submission groups includes: group).

