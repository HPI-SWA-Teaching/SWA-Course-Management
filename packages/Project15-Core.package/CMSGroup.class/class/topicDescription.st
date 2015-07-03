constructors
topicDescription
	
	^CMSAssignmentDescription new allItems: [:group| group course topics];
		isMemberBlock: [:group :topic| group topics includes: topic ];
		entrySortBlock: CMSTopic sortBlock;
		removeMemberBlock: [:group :topic | group removeTopic: topic];
		addCandidateBlock: [:group :topic | group addTopic: topic]