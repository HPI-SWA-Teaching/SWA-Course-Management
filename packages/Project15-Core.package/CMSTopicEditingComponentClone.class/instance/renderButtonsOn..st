rendering
renderButtonsOn: html
	
	html div
		class: 'box-tools';
		with: [
	html anchor 
		"type: 'button';
		class: 'btn btn-default';"
		with: 'Abbrechen';
		callback: [Transcript show: 'kakakakaka'.self sendCancelAnswer].

	html submitButton 
		"type: 'button';
		class: 'btn btn-primary';"
		with: 'Thema erstellen';
		callback: [self validateEditor ifTrue: [self sendSaveAnswer]]]