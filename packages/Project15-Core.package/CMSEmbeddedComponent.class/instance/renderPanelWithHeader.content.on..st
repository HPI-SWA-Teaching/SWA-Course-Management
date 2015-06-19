as yet unclassified
renderPanelWithHeader: header content: content on: html

	html div
		class: 'box box-default';
		with: [
			html div
				class: 'box-header';
				with: header.
			html div
				class: 'box-body';
				with: content.]