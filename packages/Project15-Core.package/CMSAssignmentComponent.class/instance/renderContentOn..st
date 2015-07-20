rendering
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
					with:[self renderBoxFor: #candidates On: html].
				html div
					class: 'col-md-6';
					with:[self renderBoxFor: #members On: html.]]]