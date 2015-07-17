presets - details
userCourseListPreset

	^ Dictionary newFrom: {
		#header -> 'Meine Lehrveranstaltungen'.
		#tables -> 
			{self courseTableWithData: [:user | user courses]}}