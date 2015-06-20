as yet unclassified
addGroup

	| newGroup |
	newGroup := self course createNewGroup.
	(self session user isEnrolled: self course)
		ifTrue: [newGroup addNewMember: self session user].
	self assignMembers: newGroup