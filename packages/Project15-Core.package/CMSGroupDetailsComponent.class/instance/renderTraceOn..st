as yet unclassified
renderTraceOn: html

	html anchor
		callback: [self showCourse];
		with: self group course title.
	self renderTraceSpacerOn: html.
	html text: self group title.