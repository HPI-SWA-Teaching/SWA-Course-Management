rendering
renderContentOn: html

	self session isLoggedIn
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