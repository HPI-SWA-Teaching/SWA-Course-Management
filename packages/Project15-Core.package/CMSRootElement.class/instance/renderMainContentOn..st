rendering
renderMainContentOn: html

	html div
		id: 'cms-content'; 
		class: 'content-wrapper';
		with: [
			self renderContentHeaderOn: html.
			self renderContentsOn: html]