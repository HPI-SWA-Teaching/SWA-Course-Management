presets - details
userProfilePreset

	^ Dictionary newFrom: {
		#header -> 'Mein Profil'.
		#tables ->
			{self groupTableWithData: [:user | user groups].
			self submissionTableWithData: [:user | user collectAllSubmissions].
			self courseTableWithData: [:user | user courses]}}