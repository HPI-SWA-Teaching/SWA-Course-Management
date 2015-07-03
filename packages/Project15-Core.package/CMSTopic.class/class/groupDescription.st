as yet unclassified
groupDescription

	^CMSAssignmentDescription new allItems: [:topic | topic course groups];
		isMemberBlock: [:topic :group | topic groups includes: group];
		entrySortBlock: CMSGroup sortBlock;
		removeMemberBlock: [:topic :group | group removeTopic: topic];
		addCandidateBlock: [:topic :group | group addTopic: topic]