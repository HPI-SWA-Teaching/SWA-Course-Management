rendering
renderContentHeaderOn: html

	html div
		class: 'content-header';
		with: [ 
			self renderBackButtonOn: html.
			self renderTitleOn: html.
			self renderBreadcrumbOn: html.
			html render: self session messageComponent]