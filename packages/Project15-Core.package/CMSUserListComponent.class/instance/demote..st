as yet unclassified
demote: aUser
		
	aUser isAdmin: false.
	self session messageComponent infoMessage: (CMSMessageComponent infoDemoteUser: aUser username).