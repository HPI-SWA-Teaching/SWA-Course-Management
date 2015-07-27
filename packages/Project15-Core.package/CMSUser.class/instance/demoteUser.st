accessing
demoteUser

	self isAdmin: false.
	^ CMSMessageComponent infoUserRoleChanged: self

	