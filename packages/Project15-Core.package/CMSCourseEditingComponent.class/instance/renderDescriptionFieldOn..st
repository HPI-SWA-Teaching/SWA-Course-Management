rendering
renderDescriptionFieldOn: html

	html tableRow: [
		html tableData: 'Zusatzinformationen'.
		html tableData: [
			html textArea on: #description of: self course]]