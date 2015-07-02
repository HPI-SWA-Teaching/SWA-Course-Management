as yet unclassified
renderContentOn: html

	html form: [
		html table: [
			self renderEditingFieldsOn: html;
				renderButtonsOn: html]]