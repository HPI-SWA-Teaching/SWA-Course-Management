accessing
defaultDescriptions

	^ Dictionary newFrom: {CMSUser -> self userDescription.
		CMSGroup -> self groupDescription}