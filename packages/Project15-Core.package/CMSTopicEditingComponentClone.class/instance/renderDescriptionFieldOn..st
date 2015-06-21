rendering
renderDescriptionFieldOn: html
	
	html div
		class: 'form-group';
		with:[
			html label
				with: 'Beschreibung'.
			html textArea 
				attributeAt: 'rows' put: '3';
				class: 'form-control';
				placeholder: 'Bitte Beschreibung eingeben';
				on: #description of: self topic.
		].