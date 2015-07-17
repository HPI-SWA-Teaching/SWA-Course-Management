accessing
courseEditingYear
	| inputs editingYear |

	inputs := driver findElementsByTagName: 'input'.
	inputs do: [:each | ((each getAttribute: 'type') = 'number') 
							ifTrue: [editingYear := each]].

	^ editingYear.