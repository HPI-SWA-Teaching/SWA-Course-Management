as yet unclassified
renderTraceOn: html
	self renderBreadcrumbAnchor: [self answer: #Cancel] text: self course title on: html.
	self renderLastBreadcrumbText: self course title on: html.