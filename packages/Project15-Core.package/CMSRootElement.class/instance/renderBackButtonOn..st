rendering
renderBackButtonOn: html

	self mainContent getTraceDescription ifNotEmpty: [
		html anchor
			class: 'btn-lg cms-btn-back cms-horizontal';
			callback: [self mainContent changeBack];
			with: [html span class: 'glyphicon glyphicon-circle-arrow-left']]