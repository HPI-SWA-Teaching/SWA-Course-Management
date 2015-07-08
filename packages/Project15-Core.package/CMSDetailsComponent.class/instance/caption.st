rendering
caption

	self data = #allCourses ifTrue: [^ 'Alle Lehrveranstaltungen'].
	self data = #userCourses ifTrue: [^ 'Meine Lehrveranstaltungen'].
	self data = #userList ifTrue: [^ 'Nutzerverwaltung'].
	^ self data title content