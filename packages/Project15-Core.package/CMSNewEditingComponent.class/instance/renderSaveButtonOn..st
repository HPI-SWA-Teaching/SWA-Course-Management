rendering
renderSaveButtonOn: html

	| isUserAdmin|
	isUserAdmin := self session user isAdmin.
	html submitButton 
		class: 'btn btn-xs btn-primary cms-btn-small', (isUserAdmin ifFalse: [' disabled'] ifTrue: ['']);
		callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
		with: 'Speichern'