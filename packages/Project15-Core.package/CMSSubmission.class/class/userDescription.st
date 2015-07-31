accessing
userDescription

	^CMSAssignmentDescription new allItems: [:submission | submission course participents];
		isMemberBlock: [:submission :user | submission assignments includes: user];
		entrySortBlock: CMSUser sortBlock;
		removeMemberBlock: [:submission :user | user removeSubmission: submission];
		addCandidateBlock: [:submission :user | user addSubmission: submission]