rendering
renderSideBarItemProfileOn: html

	html listItem
		with: [
			html anchor
				id: 'profile';
				callback: [self rootComponent setMainContentTo: CMSDetailsComponent
					preparedBy: [:component | component data: #userProfile]];
				with: 'Mein Profil']