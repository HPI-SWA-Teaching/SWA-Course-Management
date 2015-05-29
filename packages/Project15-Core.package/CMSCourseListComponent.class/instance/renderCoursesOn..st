as yet unclassified
renderCoursesOn: html
		
	(CMSDatabase courseDb asOrderedCollection) sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
		]
	].