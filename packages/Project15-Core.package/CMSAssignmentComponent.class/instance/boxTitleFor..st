rendering
boxTitleFor: aSymbol

	^ (aSymbol = #members
		ifTrue: ['Gewählte']
		ifFalse: ['Mögliche']),
	' ', self assignmentClass pluralString