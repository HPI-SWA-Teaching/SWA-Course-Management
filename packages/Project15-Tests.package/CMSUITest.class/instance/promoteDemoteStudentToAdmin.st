testing
promoteDemoteStudentToAdmin
	| studentRow tableRows |
	
	tableRows := driver findElementsByTagName: 'tr'.
	tableRows do: [:each | (each getText includesSubString: 'Hannah Schneider')
								ifTrue: [studentRow := each]].
	(studentRow findElementByTagName: 'a') click.