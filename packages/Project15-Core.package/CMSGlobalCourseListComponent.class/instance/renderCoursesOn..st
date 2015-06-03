as yet unclassified
renderCoursesOn: html

	CMSImageDatabase instance courseDb sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
			html tableData: [
				html anchor
					callback: [self viewCourse: course];
					with: 'View'].
			html tableData: [
				(self session user isEnrolled: course)
					ifFalse: [
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