rendering
renderContentOn: html

	self wasShown 
		ifFalse: [
			html div
				class: 'col-md-6 ', self messageType, '-', 'message';
				with: self messageText.
			self wasShown: true].