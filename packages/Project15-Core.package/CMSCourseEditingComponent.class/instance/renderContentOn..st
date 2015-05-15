rendering
renderContentOn: html

	html table: [
		self renderTitleRowOn: html.
		self renderSemesterRowOn: html.
		self renderDescriptionFieldOn: html.
		self renderButtonsOn: html]