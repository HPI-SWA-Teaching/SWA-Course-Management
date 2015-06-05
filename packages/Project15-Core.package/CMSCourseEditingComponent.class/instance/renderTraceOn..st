as yet unclassified
renderTraceOn: html

	html anchor
		callback: [self answer: #Cancel];
		with: self course title.
	self renderTraceSpacerOn: html.
	html text: self course title