rendering
renderContentOn: html

	html render: self session messageComponent.
	html form: [
		html table: [
			self renderTitleFieldOn: html.
			self renderDescriptionFieldOn: html.
			self renderButtonsOn: html]]