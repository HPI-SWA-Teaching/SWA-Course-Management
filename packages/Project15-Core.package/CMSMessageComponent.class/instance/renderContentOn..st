rendering
renderContentOn: html

	self wasShown ifTrue: [^ self].
	html div
		class: self messageType, '-', 'message';
		with: self messageText.
	self wasShown: true. 