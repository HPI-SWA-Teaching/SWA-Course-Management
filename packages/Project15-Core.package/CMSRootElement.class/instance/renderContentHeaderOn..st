rendering
renderContentHeaderOn: html

	self mainContent getTraceDescription ifNotEmpty:
		[html anchor
			class: 'btn btn-xs btn-primary cms-btn-small';
			callback: [self mainContent view: self mainContent getTraceDescription last second];
			with: [html text: 'Zurück']].
	html heading
		level: 1;
		with: (self mainContent caption).
	html orderedList
		class: 'breadcrumb';
		with: [
			html listItem: [
				html anchor
					url: '#';
					with: [
						html inserted 
							class: 'fa fa-dashboard'.
						html text: ' Home'.]].
				mainContent renderTraceOn: html.]