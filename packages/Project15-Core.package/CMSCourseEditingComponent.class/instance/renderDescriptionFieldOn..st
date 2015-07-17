rendering
renderDescriptionFieldOn: html

	html tableRow: [
		html tableData: 'Description'.
		html tableData: [
			html textArea on: #description of: self course]]