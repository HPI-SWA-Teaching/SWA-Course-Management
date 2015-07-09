as yet unclassified
renderButtonsOn: html

	html div 
		class: 'btn-group cms-edit-btn-group pull-left';
		with: [
			html submitButton 
				class: 'btn btn-xs btn-primary cms-btn-small';
				callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
				with: 'Speichern'.
			html submitButton 
				class: 'btn btn-xs btn-primary cms-btn-small';
				callback: [self sendCancelAnswer ];
				with: 'Abbrechen'.
			html submitButton 
				class: 'btn btn-xs btn-danger cms-btn-small';
				callback: [self sendDeleteAnswer];
				with: 'Löschen'].



