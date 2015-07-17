as yet unclassified
mayAssignMembers

	^ self session user isAdmin
		or: [self session user participatesIn: self group]