rendering
renderSideBarContentOn: html
	| user |
	html listItem
		class: 'header';
		with: 'Overview'.
	html listItem: [
		html anchor
			callback: [self rootComponent mainContent: (self rootComponent loadComponent: 				CMSGlobalCourseListComponent)];
			with: [
				html span: CMSGlobalCourseListComponent caption.]].
	html listItem: [
		html anchor
			callback: [self rootComponent mainContent: (self rootComponent loadComponent: 				CMSUserCourseListComponent)];
			with: [
				html span: CMSUserCourseListComponent caption.]].
	user := self session user.
	user isAdmin ifTrue: [
		html listItem: [
			html anchor
				callback: [self rootComponent mainContent: (self rootComponent loadComponent: CMSUserListComponent)];
			with: [
				html span: CMSUserListComponent caption.]].].

			
		
				