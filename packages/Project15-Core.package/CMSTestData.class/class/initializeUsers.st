as yet unclassified
initializeUsers

	| userdb |

	userdb := CMSImageDatabase instance.
	self names do: [:name|
		userdb registerUser: (CMSUser named: name)].
	userdb registerUser: ((CMSUser named: 'Admin') isAdmin: true). 