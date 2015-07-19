class initialization
initializeUsers

	| userdb |

	userdb := CMSImageDatabase instance.
	self userNames do: [:name|
		userdb registerUser: (CMSUser named: name)].
	userdb registerUser: ((CMSUser named: 'Admin') isAdmin: true). 