rendering
renderDescriptionFieldOn: html
	
	html div
		class: 'form-group';
		with:[
			html label
				with: 'Zusatzinformationen'.
			html textArea 
				attributeAt: 'rows' put: '3';
				class: 'form-control';
				placeholder: 'Bitte Zusatzinformationen eingeben';
				on: #description of: self course.].