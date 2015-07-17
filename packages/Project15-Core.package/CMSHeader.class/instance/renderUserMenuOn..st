rendering
renderUserMenuOn: html

	html listItem: [
			html anchor
				id: 'logout'; 
				callback: [
					self session logout.
					self rootComponent answer: nil.
					self rootComponent setMainContentTo: CMSLoginComponent];
				with: 'Abmelden']