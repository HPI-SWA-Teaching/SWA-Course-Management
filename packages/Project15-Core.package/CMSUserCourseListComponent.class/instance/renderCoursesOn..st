as yet unclassified
renderCoursesOn: html
	
	(self session user courses asOrderedCollection) sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
			html tableData: [
				html anchor 
					callback: [self leaveCourse: course];
					with: 'Leave'.
			].
		].
	].