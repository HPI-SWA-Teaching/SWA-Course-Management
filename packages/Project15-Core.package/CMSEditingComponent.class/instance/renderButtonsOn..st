rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton
				callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
				with: 'Save'].
		html tableData: [
			html submitButton
				callback: [self sendCancelAnswer];
				with: 'Cancel'.
			html submitButton
				callback: [self sendDeleteAnswer];
				with: 'Delete']]