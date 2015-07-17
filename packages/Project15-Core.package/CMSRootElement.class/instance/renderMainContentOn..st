rendering
renderMainContentOn: html

	html div 
		class: 'content-wrapper';
		with: [
			html div
				class: 'content-header';
				with: [ 
					self renderContentHeaderOn: html.
					self renderContentBreadcrumbOn: html.
				 	html render: self session messageComponent].
			html div
				class: 'content';		
				with: self mainContent]
	