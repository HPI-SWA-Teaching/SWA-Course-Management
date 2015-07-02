accessing
renderEditingFieldsOn: html

	html textInput
		attributeAt: 'type' put: 'text';
		class: 'form-control';
		placeholder: 'Bitte Titel eingeben';
		on: #content of: self