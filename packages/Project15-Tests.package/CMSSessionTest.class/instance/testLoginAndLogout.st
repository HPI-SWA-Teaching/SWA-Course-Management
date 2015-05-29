running
testLoginAndLogout

	| session user |
	session := CMSSession new.
	user := CMSUser new.

	self deny: session isLoggedIn.

	session login: user.

	self assert: session isLoggedIn.

	session logout.

	self deny: session isLoggedIn.