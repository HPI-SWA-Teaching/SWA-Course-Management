as yet unclassified
renderContentOn: html

	html table: [
		self renderTableHeadersOn: html.
		self renderCoursesOn: html]