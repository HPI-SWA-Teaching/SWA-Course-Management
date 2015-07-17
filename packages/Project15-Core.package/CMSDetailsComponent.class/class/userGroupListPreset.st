presets - details
userGroupListPreset

	^ Dictionary newFrom: {
		#header -> 'Meine Gruppen'.
		#tables -> 
			{self groupTableWithData: [:user | user groups]}}