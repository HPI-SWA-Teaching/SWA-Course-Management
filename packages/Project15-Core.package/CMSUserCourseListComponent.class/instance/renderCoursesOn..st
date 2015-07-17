rendering
renderCoursesOn: html
	
	(self session user courses asOrderedCollection) sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title content.
			html tableData: course description content.
			html tableData: [
				html anchor
					class: 'btn btn-xs btn-primary';
					callback: [self viewCourse: course];
					with: 'Anzeigen'].
			html tableData: [
				html anchor 
					class: 'btn btn-xs btn-danger';
					callback: [self leaveCourse: course];
					with: 'Ausschreiben']]]