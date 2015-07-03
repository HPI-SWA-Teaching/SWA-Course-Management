constructors
userDescription
	
	^CMSAssignmentDescription new allItems: [:group| group course participents];
		isMemberBlock: [:group :user | group isMember: user];
		entrySortBlock: CMSUser sortBlock;
		removeMemberBlock: [:group :user | group removeGroupMember: user];
		addCandidateBlock: [:group :user | group addNewMember: user]