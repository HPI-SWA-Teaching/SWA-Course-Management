accessing
groupDescription

	^CMSAssignmentDescription new allItems: [:submission | submission course groups];
		isMemberBlock: [:submission :group | submission groups includes: group];
		entrySortBlock: CMSGroup sortBlock;
		removeMemberBlock: [:submission :group | group removeSubmission: submission];
		addCandidateBlock: [:submission :group | group addSubmission: submission]