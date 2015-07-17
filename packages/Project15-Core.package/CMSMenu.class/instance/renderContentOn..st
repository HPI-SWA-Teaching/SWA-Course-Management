rendering
renderContentOn: html

	self session isLoggedIn 
	ifTrue: [
		html div
			class: 'main-header';
			with: [self renderMenuBarOn: html].
		html div
			class: 'menu';
			with: [self renderMenuBarOn: html].
		html div
			with: [self rootComponent mainContent renderTraceOn: html]]