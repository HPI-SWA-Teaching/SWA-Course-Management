rendering
renderContentOn: html

	html div
		class: 'wrapper';
		with: [
			self renderContentMenuBarOn: html.
			self renderContentSideBarOn: html.
			self renderMainContentOn: html].
	self renderJavaScriptOn: html
