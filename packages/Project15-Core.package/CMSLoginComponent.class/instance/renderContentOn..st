rendering
renderContentOn: html

	self session isLoggedIn
		ifFalse: [
			html div 
				class: 'loginForm';	
				with: [self renderContentLoginFormOn: html]]