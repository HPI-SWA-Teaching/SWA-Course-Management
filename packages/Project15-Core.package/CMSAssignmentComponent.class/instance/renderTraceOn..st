rendering
renderTraceOn: html

	self renderBreadcrumbAnchor: [self showCourse] 
		text: (self predecessorElement course title) 
		on: html.
	self renderBreadcrumbAnchor: [self returnToPredecessor] 
		text: self predecessorElement title 
		on: html.
	self renderLastBreadcrumbText: self class caption 
		on: html