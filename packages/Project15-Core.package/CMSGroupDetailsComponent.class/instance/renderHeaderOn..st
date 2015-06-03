as yet unclassified
renderHeaderOn: html

	html anchor
		callback: [self showCourse];
		with: 'Back'.
	html break.
	html text: self group title.