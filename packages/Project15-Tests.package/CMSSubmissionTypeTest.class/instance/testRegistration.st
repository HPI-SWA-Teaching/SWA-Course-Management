running
testRegistration

	| type |
	type := CMSSubmissionType new.
	type title content: 'Test SubmissionType'.

	self deny: (CMSImageDatabase instance submissionTypeDb includes: type).

	type register.

	self assert: (CMSImageDatabase instance submissionTypeDb includes: type).

	type unregister.

	self deny: (CMSImageDatabase instance submissionTypeDb includes: type).
