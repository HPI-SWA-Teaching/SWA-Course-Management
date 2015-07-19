rendering
renderContentOn: html

	html form
		class: 'edit-form';
		with: [
			html table 
				with: [
					self renderEditingFieldsOn: html;
					renderButtonsOn: html]].