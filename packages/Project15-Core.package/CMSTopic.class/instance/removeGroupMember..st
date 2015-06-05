accessing
removeGroupMember: aCMSUser

	self removeMember: aCMSUser.
	aCMSUser leaveTopic: self.