rendering
renderHeaderOf: description On: html

	description generalStructure isEmpty ifFalse: [
		html div class: 'row';
			with: [html div class: 'col-md-12';
				with: [html div class: 'box box-default';
					with: [
						html div class: 'box-header';
							with: [html heading level3;
								class: 'box-title';
								with: description header].
						html div class: 'box-tools';
							with: [
								description buttons do: [:but |
									(but fourth value: self session user) ifTrue: [
										html anchor
											callback: (but third value: self value: self data);
											class: (but second);
											with: (but first)]]].
						html div class: 'box-body';
							with:[html definitionList class: 'dl-horizontal';
								with: [
									description generalStructure do: [:line |
										html definitionTerm: line first.
										html definitionData: (line second value: self data)]]]]]]]