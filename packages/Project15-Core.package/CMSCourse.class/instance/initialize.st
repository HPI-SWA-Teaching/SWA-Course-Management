initialization
initialize

	self description: (CMSDescriptionString containing: '');
		term: CMSSemester currentSemester;
		title: (CMSTitleString containing: '');
		participents: Set new;
		groups: OrderedCollection new;
		topics: Dictionary new