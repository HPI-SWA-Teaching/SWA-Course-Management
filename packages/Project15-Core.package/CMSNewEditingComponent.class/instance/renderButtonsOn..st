rendering
renderButtonsOn: html

	| isUserAdmin|
	isUserAdmin := self session user isAdmin.

	html div 
		class: 'btn-group pull-left';
		with: [
			html submitButton 
				class: 'btn btn-xs btn-primary cms-btn-small', (isUserAdmin ifFalse: [' disabled'] ifTrue: ['']);
				callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
				with: 'Speichern'.
			html submitButton 
				class: 'btn btn-xs btn-primary cms-btn-small';
				callback: [self sendCancelAnswer ];
				with: 'Abbrechen'.
			html submitButton 
				class: 'btn btn-xs btn-danger cms-btn-small', (isUserAdmin ifFalse: [' disabled'] ifTrue: ['']);
				callback: [self sendDeleteAnswer];
				with: 'Löschen'].




