rendering
renderContentHeaderOn: html

	html heading
		level: 1;
		with: (mainContent caption).
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