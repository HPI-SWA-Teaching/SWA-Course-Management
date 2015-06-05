as yet unclassified
renderContentOn: html

	html form: [
		self renderButtonOn: html.
		self renderMembersOn: html.
		self renderCandidatesOn: html]