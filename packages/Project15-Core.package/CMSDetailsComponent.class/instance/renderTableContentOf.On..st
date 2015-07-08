rendering
renderTableContentOf: description On: html

	| tableData |
	tableData := description data value: self data.
	html div class: 'box-body no-pading';
		with: [html table
			class: 'table';
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