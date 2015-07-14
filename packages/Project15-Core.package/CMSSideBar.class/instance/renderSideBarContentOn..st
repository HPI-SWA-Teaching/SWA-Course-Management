rendering
renderSideBarContentOn: html

	| user |
	html listItem
		class: 'header';
		with: 'Overview'.
	html listItem
		with: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
					preparedBy: [:component | component data: #userProfile]];
				with: 'Mein Profil'].
	html listItem: [
		html anchor
			callback: [self rootComponent setMainContentTo: CMSDetailsComponent
						preparedBy: [:component | component data: #allCourses]];
			with: [
				html span: 'Alle Lehrveranstaltungen']].
	user := self session user.
	"display admin menue items"
	user isAdmin ifTrue: [
		html listItem: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #userList]];
			with: [
				html span: 'Benutzerverwaltung']].
		html listItem: [
			html anchor
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
							preparedBy: [:component | component data: #submissionTypes]];
			with: [
				html span: 'Alle Abgabeartefakte']]].