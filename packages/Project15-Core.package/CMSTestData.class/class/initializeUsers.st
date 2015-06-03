as yet unclassified
initializeUsers

	| userdb |

	userdb := CMSImageDatabase instance.
	1 to: 100 do: [:userID|
		userdb registerUser: (CMSUser named: ('student#', userID))].
	userdb registerUser: ((CMSUser named: 'admin') isAdmin: true). 