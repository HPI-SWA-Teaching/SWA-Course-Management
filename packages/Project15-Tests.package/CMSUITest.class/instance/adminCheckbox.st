accessing
adminCheckbox
	| labels contentWrapper adminCheckbox |
	
	"do this to ignore the userinfo admin label"
	contentWrapper := driver findElementByID: 'cms-content'. 

	labels := contentWrapper findElementsByTagName: 'label'.
	labels do: [:each | (each getText includesSubString: 'Admin') 
						ifTrue: [adminCheckbox := each findElementByClassName: 'checkbox'.]].
	^  adminCheckbox