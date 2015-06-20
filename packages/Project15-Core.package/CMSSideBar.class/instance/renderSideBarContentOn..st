rendering
renderSideBarContentOn: html

	| user |
	html listItem
		class: 'header';
		with: 'Overview'.
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSGlobalCourseListComponent];
			with: [
				html span: CMSGlobalCourseListComponent caption.]].
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSUserCourseListComponent];
			with: [
				html span: CMSUserCourseListComponent caption.]].
	user := self session user.
	user isAdmin ifTrue: [
		html listItem: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSUserListComponent];
			with: [
				html span: CMSUserListComponent caption]]]

			
		
				