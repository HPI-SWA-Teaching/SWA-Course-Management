rendering
renderTraceOn: html

	self renderBreadcrumbAnchor: [self showCourse] text: (self group course title content) on: html.
	self renderLastBreadcrumbText: self group title content on: html.