as yet unclassified
courseDetailsPreset

	^ self new
		header: 'Veranstaltungsübersicht';
		traceDescription: [:ignore | {{'Alle Lehrveranstaltungen'. #allCourses}}];
		buttons: #(); "Keine Buttons"
		generalStructure:
			{{'Veranstaltung'. [:course | course title content]}.
			{'Semester'. [:course | course term asString]}.
			{'Beschreibung'. [:course | course description content]}};
		tables:
			{CMSTableViewDescription new
				header: 'Gruppen';
				data: [:course | course groups];
				buttons: {{'Neue Gruppe'. 'btn btn-xs btn-success'. [:component :course | [component assign: CMSUser to: (CMSGroup for: course)]]. [:user | true]}};
				structure:
					{{'Gruppe'. [:ignore :html :group | html text: group title content]. [:user :group | true]}.
					{'Anzahl Mitglieder'. [:ignore :html :group | html text: group members size]. [:user :group | true]}.
					{''. [:component :html :group |
						html anchor callback: [component view: group];
							class: 'btn btn-xs btn-primary';
							with: 'Ansehen'].
						[:user :group | true]}.
					{''. [:component :html :group |
						html anchor callback: [group unregister];
							class: 'btn btn-xs btn-danger';
							with: 'Löschen'].
						[:user :group | user isAdmin]}}.
			CMSTableViewDescription new
				header: 'Themen';
				data: [:course | course topics];
				buttons: {{'Neues Thema'. 'btn btn-xs btn-success'. [:component :course | [component editNew: CMSTopic with: [:topic | topic course: course]]]. [:user | true]}};
				structure:
					{{'Thema'. [:ignore :html :topic | html text: topic title content]. [:user :topic | true]}.
					{'Beschreibung'. [:ignore :html :topic | html text: topic description content]. [:user :topic | true]}.
					{''. [:component :html :topic |
						html anchor callback: [component view: topic];
							class: 'btn btn-xs btn-primary';
							with: 'Ansehen'].
						[:user :topic | true]}.
					{''. [:component :html :topic |
						html anchor callback: [topic unregister];
							class: 'btn btn-xs btn-danger';
							with: 'Löschen'].
						[:user :topic | user isAdmin]}}.
			CMSTableViewDescription new
				header: 'Teilnehmer';
				data: [:course | course participents];
				buttons: #();
				structure:
					{{'Name'. [:ignore :html :user | html text: user title content]. [:user :topic | true]}}}