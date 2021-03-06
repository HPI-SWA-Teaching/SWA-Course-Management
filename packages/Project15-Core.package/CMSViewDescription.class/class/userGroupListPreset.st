as yet unclassified
userGroupListPreset

	^ self new
		header: 'Meine Gruppen';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Gruppen';
				data: [:user | user groups];
				buttons: #();
				structure:
					{{'Name'. [:ignore :html :group | html text: group title content]. [:user :group | true]}.
					{'Lehrveranstaltung'. [:ignore :html :group | html text: group course title content]. [:user :group | true]}.
					{''. [:component :html :group |
						html anchor callback: [component view: group];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Gruppe ansehen'].
						[:user :group | true]}.
					{''. [:component :html :group |
						html anchor callback: [component view: group course];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Veranstaltung ansehen'].
						[:user :group | true]}}}