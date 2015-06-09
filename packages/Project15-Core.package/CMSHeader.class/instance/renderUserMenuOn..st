rendering
renderUserMenuOn: html
	html listItem: [
			html anchor 
				callback: [
						self session logout.
						self rootComponent answer: nil.
						self rootComponent mainContent: (self rootComponent loadComponent: CMSLoginComponent)];
				with: 'Ausloggen'.].