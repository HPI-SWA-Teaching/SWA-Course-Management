rendering
renderContentOn: html

	self wasShown ifTrue: [^ self].
	html div
		class: 'col-md-6 ', self messageType, '-', 'message';
		with: self messageText.
	self wasShown: true.