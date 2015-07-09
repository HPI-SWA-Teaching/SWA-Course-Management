rendering
renderEditingFieldsFor: anObject On: html

	html textArea 
		attributeAt: 'rows' put: '3';
		class: 'form-control';
		placeholder: 'Bitte Zusatzinformationen eingeben';
		on: #content of: self