rendering
renderSideBarContentOn: html

	| user |
	html listItem
		class: 'header';
		with: 'Overview'.
	html listItem
		with: [
			html anchor
				id: 'profile';
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
					preparedBy: [:component | component data: #userProfile]];
				with: 'Mein Profil'].
	html listItem: [
		html anchor
			id: 'globalcourselist';
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #allCourses]];
			with: [
				html span: 'Alle Lehrveranstaltungen']].
	user := self session user.

	user isAdmin ifTrue: [
		html listItem: [
			html anchor
				id: 'userlist';
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #userList]];
			with: [
				html span: 'Benutzerverwaltung']].
		html listItem: [
			html anchor
				id: 'submissions';
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #submissionTypes]];
			with: [
				html span: 'Alle Abgabeartefakte']]].