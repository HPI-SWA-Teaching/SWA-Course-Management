accessing
deleteTopicButton
	| divs topics |

	divs := driver findElementsByClassName: 'col-md-6'.
	divs do: [:each | Transcript show: each getText. (each getText includesSubString: 'Themen') ifTrue: [topics := each]].
	
	^ topics findElementByClassName: 'btn-danger'.

	