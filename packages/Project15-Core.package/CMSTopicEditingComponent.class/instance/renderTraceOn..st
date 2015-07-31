rendering
renderTraceOn: html
	self renderBreadcrumbAnchor: [self answer: #Cancel] text: self course title on: html.
	self renderLastBreadcrumbText: (self originalTopic ifNil: ['new Topic'] ifNotNil: [self originalTopic title]) on: html.