rendering
renderTraceOn: html

	self renderBreadcrumbAnchor: [self showCourse] text: (self group course title content) on: html.
	self renderBreadcrumbAnchor: [self returnToGroupView] text: self group title content on: html.
	self renderLastBreadcrumbText: self caption on: html