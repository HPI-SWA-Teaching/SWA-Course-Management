rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton callback: [self answer: self course];
				text: 'Save'].
		html tableData: [
			html submitButton callback: [self answer: nil];
				text: 'Cancel']]