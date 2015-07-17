as yet unclassified
renderBackLinkOn: html

	html anchor
		callback: [self returnToGroupView];
		with: 'Back'.