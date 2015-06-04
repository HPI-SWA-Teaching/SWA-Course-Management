rendering
renderContentOn: html

	self session isLoggedIn 
	ifTrue: [
		html div
		class: 'menu';
		with:[ self renderMenuBarOn: html ]]