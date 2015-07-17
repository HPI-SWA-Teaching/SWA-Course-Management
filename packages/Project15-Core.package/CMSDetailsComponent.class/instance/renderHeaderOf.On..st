rendering - dispatch
renderHeaderOf: description On: html

	(description includesKey: #generalStructure) ifTrue: [
		html div class: 'row';
			with: [html div class: 'col-md-12';
				with: [html div class: 'box box-default';
					with: [
						self renderHeaderBoxOf: description On: html.
						self renderGeneralStructureOf: description On: html]]]]