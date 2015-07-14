as yet unclassified
userListPreset

	^ self new
		header: 'Benutzerverwaltung';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Registrierte Nutzer';
				data: [:ignore | CMSImageDatabase instance userDb];
				buttons: #();
				structure:
					{{'Name'. [:ignore :html :user | html text: user title content]. [:admin :user | true]}.
					{'Rang'. [:ignore :html :user | html text: (user isAdmin ifTrue: ['Admin'] ifFalse: ['Student'])]. [:admin :user | true]}.
					{''. [:component :html :user |
						html anchor callback: [component session messageComponent infoMessage: (user isAdmin ifTrue: [user demoteUser] ifFalse: [user promoteUser])];
							class: 'btn btn-xs cms-btn-small btn-', (user isAdmin ifTrue: ['danger'] ifFalse: ['success']);
							with: (user isAdmin ifTrue: ['Admin-Status entziehen'] ifFalse: ['Zum Admin ernennen'])].
						[:admin :user | (admin = user) not]}}}