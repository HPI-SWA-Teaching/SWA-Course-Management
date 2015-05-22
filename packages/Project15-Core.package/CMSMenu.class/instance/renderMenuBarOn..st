as yet unclassified
renderMenuBarOn: html

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
			html tableData: [ 
				html anchor 
					callback: [
						self session logout.
						self rootComponent answer: nil.
						self rootComponent mainContent: (self rootComponent loadComponent: CMSLoginComponent)];
					with: 'Ausloggen'
			].
			self session user isAdmin 
			ifTrue: [
				html tableData: [
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserListComponent)];
					with: 'Userlist'.
				]
			]
		]
	].