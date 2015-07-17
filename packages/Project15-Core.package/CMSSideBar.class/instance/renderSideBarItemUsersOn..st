rendering
renderSideBarItemUsersOn: html

	html anchor
		id: 'userlist';
		callback: [self rootComponent setMainContentTo: CMSDetailsComponent
			preparedBy: [:component | component data: #userList]];
		with: [
			html span: 'Benutzerverwaltung']