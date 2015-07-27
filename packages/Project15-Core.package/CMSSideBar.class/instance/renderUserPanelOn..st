rendering
renderUserPanelOn: html

	html div
		class: 'user-panel';
		with: [
			self renderUserImageOn: html.
			self renderUserInformationOn: html]