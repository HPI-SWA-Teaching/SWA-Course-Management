rendering
renderHeaderBoxOf: description On: html

	html div class: 'box-header';
		with: [
			html heading level3;
				class: 'box-title';
				with: (description at: #header).
			html div class: 'box-tools';
				with: [self renderButtons: (description at: #buttons ifAbsent: #()) On: html]]