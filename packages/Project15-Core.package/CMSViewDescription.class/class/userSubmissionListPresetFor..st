as yet unclassified
userSubmissionListPresetFor: aCMSUser

	^ self new
		header: 'Meine Gruppen';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Veranstaltungen';
				data: [:ignore | aCMSUser collectAllSubmissions];
				buttons: #();
				structure:
					{{'Beschreibung'. [:ignore :html :submission | html text: submission title content]. [:user :submission | true]}.
					{'Lehrveranstaltung'. [:ignore :html :submission | html text: submission course title content]. [:user :submission | true]}.
					{''. [:component :html :submission |
						html anchor callback: [component view: submission];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Abgabe ansehen'].
						[:user :submission | true]}.
					{''. [:component :html :submission |
						html anchor callback: [component view: submission course];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Veranstaltung ansehen'].
						[:user :submission | true]}}}