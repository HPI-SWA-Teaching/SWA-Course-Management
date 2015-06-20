rendering
renderTraceOn: html

	self renderBreadcrumbAnchor: [self showCourse] text: (self group course title) on: html.
	self renderLastBreadcrumbText: self group title on: html.