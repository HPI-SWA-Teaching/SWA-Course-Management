as yet unclassified
canRemoveMember: aCMSUser

	(aCMSUser participatesIn: self group) ifFalse: [^ false].
	aCMSUser = self session user
		ifTrue: [^ self session user isAdmin]
		ifFalse: [^ true]