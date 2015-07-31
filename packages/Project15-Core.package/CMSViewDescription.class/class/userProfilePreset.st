as yet unclassified
userProfilePreset

	^ self new
		header: 'Mein Profil';
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
						[:user :group | true]}}.
			CMSTableViewDescription new
				header: 'Abgaben';
				data: [:user | user collectAllSubmissions];
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
						[:user :submission | true]}}.
			CMSTableViewDescription new
				header: 'Veranstaltungen';
				data: [:user | user courses];
				buttons: #();
				structure:
					{{'Semester'. [:ignore :html :course | html text: course term asString]. [:user :course | true]}.
					{'Lehrveranstaltung'. [:ignore :html :course | html text: course title content]. [:user :course | true]}.
					{'Beschreibung'. [:ignore :html :course | html text: course description content]. [:user :course | true]}.
					{''. [:component :html :course |
						html anchor callback: [component view: course];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :course | true]}.
					{''. [:component :html :course |
						html anchor callback: [component session messageComponent infoMessage: (component session currentUser leaveCourse: course)];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Ausschreiben'].
						[:user :course | true]}}}