as yet unclassified
renderCoursesOn: html
		
	(CMSImageDatabase instance courseDb asOrderedCollection) sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
		]
	].