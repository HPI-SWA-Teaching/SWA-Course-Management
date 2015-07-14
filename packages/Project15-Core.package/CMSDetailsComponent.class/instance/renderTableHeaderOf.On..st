rendering
renderTableHeaderOf: description On: html

	html div class: 'box-header';
		with: [
			html heading level3;
				class: 'box-title';
				with: description header.
			html div class: 'box-tools';
				with: [
					description buttons do: [:but |
						(but fourth value: self session user value: self data) ifTrue: [
							html anchor
								callback: (but third value: self value: self data);
								class: (but second);
								with: (but first)]]]]