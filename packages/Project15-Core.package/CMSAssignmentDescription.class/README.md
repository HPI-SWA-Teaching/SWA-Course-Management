A CMSAssignmentDescription is a data structure describing how a CMSAssignmentComponent has to be displayed with all its relevant information.

Instance Variables
	addCandidateBlock:		<Block>
	allItems:		<OrderedCollection>
	entrySortBlock:		<Block>
	isMemberBlock:		<Block>
	removeMemberBlock:		<Block>

addCandidateBlock
	- the block beeing performed when a candidate shall be added to the members

allItems
	- the set of all items which can be or are already assigned

entrySortBlock
	- the block classifying how the Lists shall be sorted

isMemberBlock
	- the block deciding, whether an item is or is not a member.

removeMemberBlock
	- the block beeing performed when a member shall be removed.
