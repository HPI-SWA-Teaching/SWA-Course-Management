rendering
renderContentOn: html

	html script
		url: 'static/plugins/jQuery/jQuery-2.1.4.min.js'.
	html script
		url: 'static/bootstrap/js/bootstrap.min.js'.
	html script
		url: '/static/plugins/datatables/jquery.dataTables.min.js'.
	html script
		url: '/static/plugins/datatables/dataTables.bootstrap.min.js'.
	html script
		url: 'static/js/app.min.js'.
	html div
		class: 'wrapper';
		with: [
			html div 
				class: 'main-header';
				with: self menuContent.
			html div
				class: 'main-sidebar';
				with: self sidebarContent.
			html div 
				class: 'content-wrapper';
				with: [
					html div
						class: 'content-header';
						with: [ self renderContentHeaderOn: html. ].
					html div
						class: 'content';		
						with: self mainContent]].