updating
promote: aUser
		
	aUser isAdmin: true.
	self session messageComponent infoMessage: (CMSMessageComponent infoPromoteUser: aUser username)