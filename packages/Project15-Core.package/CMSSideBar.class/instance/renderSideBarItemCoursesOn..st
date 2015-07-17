rendering
renderSideBarItemCoursesOn: html

	html anchor
		id: 'globalcourselist';
		callback: [self rootComponent setMainContentTo: CMSDetailsComponent
			preparedBy: [:component | component data: #allCourses]];
		with: [
			html span: 'Alle Lehrveranstaltungen']