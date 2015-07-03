rendering
renderCandidatesBoxOn: html

	html div
		class: 'box box-danger';
		with: [
			html div
				class: 'box-header';
				with: [
					html heading
						level3
						class: 'box-title';
						with: self candidateBoxTitle.].
			html table
				class:'table';
				with: [ self renderCandidateDataOn: html]]