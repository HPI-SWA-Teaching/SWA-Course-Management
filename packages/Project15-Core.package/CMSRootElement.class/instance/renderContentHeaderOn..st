rendering
renderContentHeaderOn: html

	html heading
		level: 1;
		with: [
			self mainContent getTraceDescription ifNotEmpty:
				[html anchor
					class: 'btn btn-flat btn-invisible btn-sm';
					callback: [self mainContent changeBack];
					with: [html span class: 'fa fa-chevron-circle-left fa-2x'; style: 'color:black']].
			html space.
			html text: self mainContent caption]