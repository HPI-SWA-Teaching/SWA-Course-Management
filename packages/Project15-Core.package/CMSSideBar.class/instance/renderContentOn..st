rendering
renderContentOn: html

	html div
		class: 'sidebar';
		with: [
			self renderUserMenuOn: html.
			self renderSideBarContentOn: html]