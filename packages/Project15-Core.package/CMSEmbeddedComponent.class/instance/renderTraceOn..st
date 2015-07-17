rendering
renderTraceOn: html

	self getTraceDescription do: [:crumb |
		self renderBreadcrumbAnchor: [self view: (crumb at: #destination)] text: (crumb at: #label) on: html].
	self renderLastBreadcrumbText: self caption on: html