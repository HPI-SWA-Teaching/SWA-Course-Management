as yet unclassified
renderHeaderOn: html

	html heading
		level3
		class: 'box-title';	
		with: 'Gruppenmitglieder'.
	html div
		class: 'box-tools';
		with: [
			html anchor
				callback: [self assignMembers];
				class: 'btn btn-xs btn-success';
				with: 'Mitglieder bearbeiten'].