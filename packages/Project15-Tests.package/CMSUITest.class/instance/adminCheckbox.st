accessing
adminCheckbox
	| labels adminCheckbox |

	labels := driver findElementsByTagName: 'label'.
	labels do: [:each | (each getText includesSubString: 'Admin') 
						ifTrue: [adminCheckbox := each findElementByClassName: 'checkbox'.]].
	^  adminCheckbox