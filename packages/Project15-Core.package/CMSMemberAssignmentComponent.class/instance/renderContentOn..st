as yet unclassified
renderContentOn: html

	
	html div
		class: 'row';
		with: [
			html form: [
				html div
					class: 'col-md-12';
					with: [self renderHeadBoxOn: html].
					
				html div
					class: 'col-md-6';
					with:[self renderCandidatesOn: html].
				html div
					class: 'col-md-6';
					with:[self renderMembersOn: html.]]]