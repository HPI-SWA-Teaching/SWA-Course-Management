rendering
renderUserInformationOn: html

	html div 
		class: 'pull-left info';
		with: [
			self renderUserNameOn: html with: self session user.
			self renderUserRoleOn: html with: self session user]