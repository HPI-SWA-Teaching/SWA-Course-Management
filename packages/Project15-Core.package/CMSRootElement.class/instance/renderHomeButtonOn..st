rendering
renderHomeButtonOn: html

	html anchor
		callback: [self mainContent view: #userProfile];
		with: [
			html inserted class: 'fa fa-dashboard'.
			html text: 'Home']