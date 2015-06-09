rendering
renderTraceOn: html

	html anchor
		callback: [self answer: #Cancel];
		with: self course title.
	self renderTraceSpacerOn: html.
	html text: (self originalTopic ifNil: ['new Topic'] ifNotNil: [self originalTopic title])