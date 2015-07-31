rendering
renderTitleRowOn: html

	html tableRow: [
		html tableData: 'Title: '.
		html tableData: [
			html textInput id: 'coursetitle'; on: #title of: self course]]