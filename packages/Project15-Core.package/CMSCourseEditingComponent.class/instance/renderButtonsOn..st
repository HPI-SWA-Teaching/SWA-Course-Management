rendering
renderButtonsOn: html

	html tableRow: [
		html tableData: [
			html submitButton callback: [self validateCourse];
				with: 'Speichern'].
		html tableData: [
			html submitButton callback: [self answer: #Cancel];
				with: 'Abbrechen'.
			html submitButton callback: [self answer: #Delete];
				with: 'Löschen'].
"		html tableData: [
			html anchor callback: [self inform: 'Current data: ', Character cr,
				'Title: ', self course title, Character cr,
				'Term: ', self course term asString, Character cr,
				'Description: ', self course description];
				with: 'Data']"]