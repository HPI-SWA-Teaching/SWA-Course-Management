rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton
				callback: [self validateEditor ifTrue: [self sendSaveAnswer]];
				with: 'Speichern'].
		html tableData: [
			html submitButton
				callback: [self sendCancelAnswer];
				with: 'Abbrechen'.
			html submitButton
				callback: [self sendDeleteAnswer];
				with: 'Löschen']]