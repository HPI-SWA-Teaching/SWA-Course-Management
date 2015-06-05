rendering
renderMenuBarOn: html

	| user |
	user := self session user.
	html table: [
		html tableRow: [
			html tableData: [ 
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSGlobalCourseListComponent)];
					with: CMSGlobalCourseListComponent caption.
				html space].
			html tableData: [ 
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserCourseListComponent)];
					with: CMSUserCourseListComponent caption.
				html space].
			user isAdmin 
			ifTrue: [
				html tableData: [
				html anchor
					callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserListComponent)];
					with: CMSUserListComponent caption]].
			html tableData: [
				html text: 'user: ', user username, ' role:' , (user isAdmin ifTrue: ['Admin'] ifFalse: ['User'])].
			html tableData: [ 
				html anchor 
					callback: [
						self session logout.
						self rootComponent answer: nil.
						self rootComponent mainContent: (self rootComponent loadComponent: CMSLoginComponent)];
					with: 'Ausloggen']]]