accessing
addNewMember: aCMSUser

	self addMember: aCMSUser.
	aCMSUser joinGroup: self.