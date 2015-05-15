rendering
renderTitleRowOn: html

	html tableRow: [
		html tableData: 'Title: '.
		html tableData: [
			html textInput on: #title of: self course;
				value: self course title]]