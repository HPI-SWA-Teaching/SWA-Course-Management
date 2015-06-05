rendering
renderTraceOn: html

	html anchor
		callback: [self answer: #Cancel];
		with: self topic title.
	self renderTraceSpacerOn: html.
	html text: self topic title