rendering
renderContentOn: html

	self session isLoggedIn
		ifTrue: [html text: 'Hi ' , self session user username, ' isAdmin: ', self session user isAdmin]
		ifFalse: [
			html div 
				class: 'loginForm';	
				with: [
					html heading: 'Login'. 
					html form: [
						html table: [
							html 
								tableRow: [self renderInputUsernameOn: html];
								tableRow: [self renderSubmitButtonOn: html]]]]]