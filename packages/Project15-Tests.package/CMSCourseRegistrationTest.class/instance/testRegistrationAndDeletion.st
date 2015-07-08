running
testRegistrationAndDeletion

	| course |
	course := CMSCourse new.

	self deny: (CMSImageDatabase instance courseDb includes: course).

	course register.

	self assert: (CMSImageDatabase instance courseDb includes: course).

	course unregister.

	self deny: (CMSImageDatabase instance courseDb includes: course).