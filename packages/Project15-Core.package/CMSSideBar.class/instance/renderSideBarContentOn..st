rendering
renderSideBarContentOn: html

	| user |
	html listItem
		class: 'header';
		with: 'Overview'.
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #allCourses]];
			with: [
				html span: CMSGlobalCourseListComponent caption.]].
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #userCourses]];
			with: [
				html span: CMSUserCourseListComponent caption.]].
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #userGroups]];
			with: [
				html span: 'Meine Gruppen'.]].
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #userSubmissions]];
			with: [
				html span: 'Meine Abgaben'.]].
	user := self session user.
	"display admin menue items"
	user isAdmin ifTrue: [
		html listItem: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #userList]];
			with: [
				html span: CMSUserListComponent caption]].
		html listItem: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #submissionTypes]];
			with: [
				html span: CMSSubmissionComponent caption]]].