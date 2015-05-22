as yet unclassified
renderCoursesOn: html
	
	| isEnroled |

	(CMSDatabase courseDb asOrderedCollection) sort do: [:course |
		isEnroled := false.
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
			self session user courses do: [:userCourse |
				isEnroled
					ifFalse: [
						isEnroled := (userCourse == course).
					].
			].
			isEnroled 
				ifFalse: [
					html tableData: [
						html anchor 
							callback: [self enroleCourse: course];
							with: 'Enrole'
					].
				].
			self session user isAdmin
				ifTrue: [
					html tableData: [
						html anchor
							callback: [self editCourse: course];
							with: 'Edit'
					]
				]
		]
	].