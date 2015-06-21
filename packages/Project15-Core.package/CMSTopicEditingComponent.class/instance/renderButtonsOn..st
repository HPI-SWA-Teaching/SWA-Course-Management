rendering
renderButtonsOn: html

	html submitButton
		class: 'btn btn-xs btn-success';
		callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
		with: 'Speichern'.
	html submitButton
		class: 'btn btn-xs btn-danger';
		callback: [self sendCancelAnswer];
		with: 'Abbrechen'.