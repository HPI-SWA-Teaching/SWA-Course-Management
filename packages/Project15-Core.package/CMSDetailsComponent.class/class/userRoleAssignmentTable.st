presets - tables
userRoleAssignmentTable

	^ Dictionary newFrom: {
		#header -> 'Registrierte Nutzer'.
		#dataExtractor -> [:ignore | CMSImageDatabase instance userDb].
		#structure ->
			{Dictionary newFrom:
				{#label -> 'Name'.
				#contentRenderer -> [:ignore :html :user | html text: user title content]}.
			Dictionary newFrom:
				{#label -> 'Rang'.
				#contentRenderer -> [:ignore :html :user |
					html text: user roleAsString]}.
			Dictionary newFrom:
				{#contentRenderer -> [:component :html :user |
					html anchor callback:
						[component notifyUserAbout: (user isAdmin
							ifTrue: [user demoteUser]
							ifFalse: [user promoteUser])];
					class: 'btn btn-xs cms-btn-small btn-',
						(user isAdmin
							ifTrue: ['danger']
							ifFalse: ['success']);
					with: (user isAdmin
						ifTrue: ['Admin-Status entziehen']
						ifFalse: ['Zum Admin ernennen'])].
				#visibilityTest -> [:admin :user | (admin = user) not]}}}