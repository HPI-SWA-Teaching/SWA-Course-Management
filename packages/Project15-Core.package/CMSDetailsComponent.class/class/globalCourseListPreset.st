presets - details
globalCourseListPreset

	^ Dictionary newFrom: {
		#header -> 'Alle Lehrveranstaltungen'.
		#tables ->
			{self courseTableWithData: [:ignore | CMSImageDatabase instance courseDb]}}