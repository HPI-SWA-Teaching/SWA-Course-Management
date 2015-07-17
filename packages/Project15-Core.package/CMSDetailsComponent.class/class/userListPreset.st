presets - details
userListPreset

	^ Dictionary newFrom: {
		#header -> 'Benutzerverwaltung'.
		#tables ->
			{self userRoleAssignmentTable}}