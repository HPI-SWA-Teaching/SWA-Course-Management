rendering
renderContentOn: html

	html render: self session messageComponent.
	html form: [
		html table: [
			self renderTitleRowOn: html.
			self renderSemesterRowOn: html.
			self renderDescriptionFieldOn: html.
			self renderButtonsOn: html]]