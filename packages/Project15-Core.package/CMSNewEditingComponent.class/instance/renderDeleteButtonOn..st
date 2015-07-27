rendering
renderDeleteButtonOn: html

	| isUserAdmin|
	isUserAdmin := self session user isAdmin.
	html submitButton 
		class: 'btn btn-xs btn-danger cms-btn-small', (isUserAdmin ifFalse: [' disabled'] ifTrue: ['']);
		callback: [self sendDeleteAnswer];
		with: 'Löschen'