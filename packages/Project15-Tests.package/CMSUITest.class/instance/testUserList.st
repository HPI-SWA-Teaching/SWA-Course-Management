testing
testUserList
	| studentRow tableRows |
	
	self loginAsAdmin.
	self userList click.
	self promoteDemoteStudentToAdmin.

	tableRows := driver findElementsByTagName: 'tr'.
	tableRows do: [:each | (each getText includesSubString: 'Hannah Schneider')
								ifTrue: [studentRow := each]].
	self assert: (studentRow getText includesSubString: 'Admin').
	self assert: (studentRow getText includesSubString: 'Admin-Status entziehen').	

	self promoteDemoteStudentToAdmin.

	
	
	