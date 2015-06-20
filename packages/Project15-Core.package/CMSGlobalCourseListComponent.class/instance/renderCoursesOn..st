rendering
renderCoursesOn: html

	CMSImageDatabase instance courseDb sort do: [:course |
		html tableRow: [
			html tableData: course term asString.
			html tableData: course title.
			html tableData: course description.
			html tableData: [
				html anchor
					class: 'btn btn-xs btn-primary';
					callback: [self viewCourse: course];
					with: 'Anzeigen'].
			html tableData: [
				(self session user isEnrolled: course)
					ifFalse: [
						html anchor 
							class: 'btn btn-xs btn-success';
							callback: [self enroleCourse: course];
							with: 'Einschreiben']].
			self session user isAdmin
				ifTrue: [
					html tableData: [
						html anchor
							class: 'btn btn-xs btn-primary';
							callback: [self editCourse: course];
							with: 'Bearbeiten']]]]