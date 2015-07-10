initialization
initialize

	self description: (CMSMultilineString containing: '');
		term: CMSSemester currentSemester;
		title: (CMSSingleLineString containing: '');
		participents: Set new;
		groups: OrderedCollection new;
		topics: Dictionary new;
		submissions: OrderedCollection new