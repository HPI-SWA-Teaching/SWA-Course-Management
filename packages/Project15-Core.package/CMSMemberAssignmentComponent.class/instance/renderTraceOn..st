as yet unclassified
renderTraceOn: html

	html anchor
		callback: [self showCourse];
		with: self group course title.
	self renderTraceSpacerOn: html.
	html anchor
		callback: [self returnToGroupView];
		with: self group title.
	self renderTraceSpacerOn: html.
	html text: self class caption