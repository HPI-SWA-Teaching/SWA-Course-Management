rendering
renderTitleRowOn: html

	html tableRow: [
		html tableData: 'Lehrveranstaltung: '.
		html tableData: [
			html textInput on: #title of: self course]]