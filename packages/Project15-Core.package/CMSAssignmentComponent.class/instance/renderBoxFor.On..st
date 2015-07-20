rendering
renderBoxFor: aSymbol On: html

	html div
		class: 'box box-',
			(aSymbol = #members ifTrue: ['success'] ifFalse: ['danger']);
		with: [
			html div
				class: 'box-header';
				with: [
					html heading
						level3
						class: 'box-title';
						with: (self boxTitleFor: aSymbol)].
			html table
				class:'table';
				with: [self renderTableFor: aSymbol On: html]]