rendering
renderTraceOn: html

	self getTraceDescription do: [:crumb |
		self renderBreadcrumbAnchor: [self view: crumb second] text: crumb first on: html].
	self renderLastBreadcrumbText: self caption on: html