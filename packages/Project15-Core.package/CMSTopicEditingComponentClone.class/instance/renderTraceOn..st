rendering
renderTraceOn: html

	self renderBreadcrumbAnchor: [self answer: #Cancel] text: self course title on: html.
	self renderLastBreadcrumbText: (self originalTopic ifNil: ['Neues Thema erstellen'] ifNotNil: [self originalTopic title]) on: html.