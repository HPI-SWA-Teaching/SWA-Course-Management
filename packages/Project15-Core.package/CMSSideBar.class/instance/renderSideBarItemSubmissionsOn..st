rendering
renderSideBarItemSubmissionsOn: html

	html anchor
		id: 'submissions';
		callback: [self rootComponent setMainContentTo: CMSDetailsComponent
			preparedBy: [:component | component data: #submissionTypes]];
		with: [
			html span: 'Alle Abgabeartefakte']