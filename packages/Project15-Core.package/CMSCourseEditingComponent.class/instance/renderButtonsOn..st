rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton callback: [self validateCourse];
				with: 'Save'].
		html tableData: [
			html submitButton callback: [self answer: #Cancel];
				with: 'Cancel'.
			html submitButton callback: [self answer: #Delete];
				with: 'Delete']]