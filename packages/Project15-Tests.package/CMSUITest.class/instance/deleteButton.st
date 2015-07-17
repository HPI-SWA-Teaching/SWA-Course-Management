accessing
deleteButton
	| buttons deleteButton|

	buttons := driver findElementsByTagName: 'input'.
	buttons do: [:each | ((each getAttribute: 'value') includesSubString: 'schen') 
							ifTrue: [deleteButton := each]].
	^ deleteButton.