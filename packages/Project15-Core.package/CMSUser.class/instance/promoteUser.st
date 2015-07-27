accessing
promoteUser

	self isAdmin: true.
	^ CMSMessageComponent infoUserRoleChanged: self

	