rendering
renderTableLabelsOf: description On: html

	html tableRow: [
		(description at: #structure) do: [:column |
			html tableHeading: (column at: #label ifAbsent: [''])]]