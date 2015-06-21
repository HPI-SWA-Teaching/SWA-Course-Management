rendering
renderContentOn: html

	html div
		class: 'row';
		with: [
			html div
				class: 'col-md-6';
				with: [
					html div
						class: 'box box-primary';
						with: [
							html form:[
								html div
									class: 'box-header';
									with: [self renderBoxHeaderOn: html.].
								html div
									class: 'box-body';
									with: [self renderBoxBodyOn: html]]]]]
		