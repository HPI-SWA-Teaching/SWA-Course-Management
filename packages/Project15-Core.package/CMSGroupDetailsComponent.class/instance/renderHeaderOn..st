as yet unclassified
renderHeaderOn: html

	html anchor
		callback: [self showCourse];
		with: 'Zurück zur Veranstaltung'.
	html break.
	html text: self group title.