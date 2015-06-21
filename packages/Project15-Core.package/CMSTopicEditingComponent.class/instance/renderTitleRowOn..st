rendering
renderTitleRowOn: html

	html tableRow: [
		html tableData: 'Name'.
		html tableData: [
			html textInput on: #title of: self topic]]