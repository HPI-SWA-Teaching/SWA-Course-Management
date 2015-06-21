rendering
renderButtonsOn: html

	html submitButton 
		class: 'btn btn-xs btn-success';
		callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
		with: 'Speichern'.
	html submitButton 
		class: 'btn btn-xs btn-info';
		callback: [self sendCancelAnswer ];
		with: 'Abbrechen'.
	html submitButton 
		class: 'btn btn-xs btn-danger';
		callback: [self sendDeleteAnswer];
		with: 'Löschen'