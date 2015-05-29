as yet unclassified
renderMenuBarOn: html

	| user |
	user := self session user.
	html table: [
		html tableRow: [
			html tableData: [ 
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSGlobalCourseListComponent)];
					with: 'Aktuelle Lehrveranstaltungen'.
				html space.
			].
			html tableData: [ 
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserCourseListComponent)];
					with: 'Meine Lehrveranstaltungen'.
				html space.
			].
			user isAdmin 
			ifTrue: [
				html tableData: [
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserListComponent)];
					with: 'Userlist'.
				]
			].
			html tableData: [
				html text: 'user: ', user username, ' role:' , (user isAdmin ifTrue: ['Admin'] ifFalse: ['User']).
			].
			html tableData: [ 
				html anchor 
					callback: [
						self session logout.
						self rootComponent answer: nil.
						self rootComponent mainContent: (self rootComponent loadComponent: CMSLoginComponent)];
					with: 'Ausloggen'
			].
		]
	].