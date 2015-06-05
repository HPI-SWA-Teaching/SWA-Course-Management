accessing
addNewMember: aCMSUser

	self addMember: aCMSUser.
	aCMSUser joinTopic: self.