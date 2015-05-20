rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton callback: [self answer: self course];
				with: 'Save'].
		html tableData: [
			html submitButton callback: [self answer: nil];
				with: 'Cancel'].
"		html tableData: [
			html anchor callback: [self inform: 'Current data: ', Character cr,
				'Title: ', self course title, Character cr,
				'Term: ', self course term asString, Character cr,
				'Description: ', self course description];
				with: 'Data']"]