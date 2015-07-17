rendering
renderMenuBarOn: html

	| user |
	user := self session user.
	html table: [
		html tableRow: [
			html tableData: [ 
				html anchor
					callback: [self rootComponent setMainContentTo: CMSGlobalCourseListComponent];
					with: CMSGlobalCourseListComponent caption.
				html space].
			html tableData: [ 
				html anchor
					callback: [self rootComponent setMainContentTo: CMSUserCourseListComponent];
					with: CMSUserCourseListComponent caption.
				html space].
			user isAdmin 
			ifTrue: [
				html tableData: [
				html anchor
					callback: [self rootComponent setMainContentTo: CMSUserListComponent];
					with: CMSUserListComponent caption]].
			html tableData: [
				html text: 'user: ', user username, ' role:' , (user isAdmin ifTrue: ['Admin'] ifFalse: ['User'])].
			html tableData: [ 
				html anchor 
					callback: [
						self session logout.
						self rootComponent answer: nil.
						self rootComponent setMainContentTo: CMSLoginComponent];
					with: 'Ausloggen']]]