rendering
renderDescriptionFieldOn: html

	html tableRow: [
		html tableData: 'Beschreibung'.
		html tableData: [
			html textArea on: #description of: self topic]]