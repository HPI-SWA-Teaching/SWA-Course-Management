rendering - dispatch
renderTableContentOf: description On: html

	| tableData |
	tableData := ((description at: #dataExtractor) value:
		(self data isSymbol ifTrue: [self session user] ifFalse: [self data]))
		asOrderedCollection.
	tableData ifNotEmpty: [tableData sort: tableData first class sortBlock].
	html div class: 'box-body no-pading';
		with: [html table
			class: 'table';
			id: (description at: #header);
			with: [
				self renderTableLabelsOf: description On: html.
				self renderTableRowsOf: description with: tableData On: html]]