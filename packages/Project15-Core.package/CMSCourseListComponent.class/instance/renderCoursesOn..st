as yet unclassified
renderCoursesOn: html

	CMSCourse registeredCourses sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
			html tableData: [
				html anchor
					callback: [self editCourse: course];
					with: 'Edit']]]