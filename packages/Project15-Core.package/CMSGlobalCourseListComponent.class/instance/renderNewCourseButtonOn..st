rendering
renderNewCourseButtonOn: html

	html div
		class: 'box-tools';
		with: [
			html anchor
				class: 'btn btn-xs btn-success';
				callback: [self createNewCourse];
				with: 'Neue Veranstaltung erstellen']