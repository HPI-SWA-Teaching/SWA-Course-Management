as yet unclassified
renderCoursesOn: html

	CMSDatabase courseDb sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
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