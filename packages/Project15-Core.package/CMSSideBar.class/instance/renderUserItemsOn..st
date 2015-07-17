rendering
renderUserItemsOn: html

	html listItem
		with: [self renderSideBarItemProfileOn: html].
	html listItem: [self renderSideBarItemCoursesOn: html]