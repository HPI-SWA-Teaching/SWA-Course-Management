rendering
caption

	self data = #allCourses ifTrue: [^ 'Alle Lehrveranstaltungen'].
	self data = #userCourses ifTrue: [^ 'Meine Lehrveranstaltungen'].
	self data = #userList ifTrue: [^ 'Nutzerverwaltung'].
	self data = #submissionTypes ifTrue: [^ 'Abgabeartefakte'].
	^ self data title content