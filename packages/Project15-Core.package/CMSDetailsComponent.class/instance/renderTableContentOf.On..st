rendering
renderTableContentOf: description On: html

	| tableData |
	tableData := (description data value:
		(self data isSymbol ifTrue: [self session user] ifFalse: [self data]))
		asOrderedCollection.
	tableData ifNotEmpty: [tableData sort: tableData first class sortBlock].
	html div class: 'box-body no-pading';
		with: [html table
			class: 'table';
			id: description header;
			with: [
				html tableRow: [
					description structure do: [:column |
						html tableHeading: column first]].
				tableData do: [:entry |
					html tableRow: [
						description structure do: [:column |
							html tableData: [
								(column third value: self session user value: entry) ifTrue:
									[column second value: self value: html value: entry]]]]]]]