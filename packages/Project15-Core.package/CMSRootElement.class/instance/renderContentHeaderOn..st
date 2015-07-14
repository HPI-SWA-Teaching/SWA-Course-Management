rendering
renderContentHeaderOn: html

	self mainContent getTraceDescription ifNotEmpty:
		[html anchor
			class: 'btn btn-xs btn-primary cms-btn-small';
			callback: [self view: self mainContent getTraceDescription last second];
			with: [
				html span
					class: 'glyphicons glyphicons-arrow-left'.
				html text: 'Zurück']].
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