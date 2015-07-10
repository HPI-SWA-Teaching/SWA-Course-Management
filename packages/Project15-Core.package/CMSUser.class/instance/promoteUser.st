accessing
promoteUser

	self isAdmin: true.
	^ CMSMessageComponent infoPromoteUser: self.

	