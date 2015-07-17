rendering
renderUserMenuOn: html

	html div
		class: 'user-panel';
		with: [
			self renderUserImageOn: html.
			html div
				class: 'pull-left info';
				with: [
					self renderUserNameOn: html with: self session user.
					self renderUserRoleOn: html with: self session user]]