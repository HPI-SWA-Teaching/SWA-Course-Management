accessing
removeGroupMember: aCMSUser

	self removeMember: aCMSUser.
	aCMSUser leaveGroup: self