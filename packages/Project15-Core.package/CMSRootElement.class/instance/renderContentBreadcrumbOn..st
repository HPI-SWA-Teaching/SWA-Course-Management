rendering
renderContentBreadcrumbOn: html

	html orderedList
		class: 'breadcrumb';
		with: [
			html listItem: [
				html anchor
					callback: [self mainContent view: #userProfile];
					with: [
						html inserted class: 'fa fa-dashboard'.
						html text: ' Home']].
			self mainContent renderTraceOn: html]