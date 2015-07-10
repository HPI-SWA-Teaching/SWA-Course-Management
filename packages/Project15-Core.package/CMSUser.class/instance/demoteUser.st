accessing
demoteUser

	self isAdmin: false.
	^ CMSMessageComponent infoDemoteUser: self.

	