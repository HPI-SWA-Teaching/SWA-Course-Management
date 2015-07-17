accessing
deleteTopicButton
	| divs topics |

	divs := driver findElementsByClassName: 'col-md-6'.
	divs do: [:each | (each getText includesSubString: 'Themen') ifTrue: [topics := each]].
	
	^ topics findElementByClassName: 'btn-danger'.

	