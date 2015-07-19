rendering
renderButtonLogoutOn: html

	html anchor
		id: 'logout'; 
		callback: [
			self session logout.
			self rootComponent answer: nil.
			self rootComponent setMainContentTo: CMSLoginComponent];
		with: 'Abmelden'