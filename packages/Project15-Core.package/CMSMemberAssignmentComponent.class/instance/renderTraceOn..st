as yet unclassified
renderTraceOn: html

	self renderBreadcrumbAnchor: [self showCourse] text: (self group course title) on: html.
	self renderBreadcrumbAnchor: [self returnToGroupView] text: self group title on: html.
	self renderLastBreadcrumbText: self class caption on: html.