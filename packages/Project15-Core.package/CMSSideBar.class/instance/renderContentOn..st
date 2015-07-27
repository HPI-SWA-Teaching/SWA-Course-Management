rendering
renderContentOn: html

	html div
		class: 'sidebar';
		with: [
			self renderUserPanelOn: html.
			self renderSideBarContentOn: html]