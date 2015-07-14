as yet unclassified
groupDetailsPreset

	^ self new
		header: 'Gruppenübersicht';
		traceDescription: [:group | {{'Alle Lehrveranstaltungen'. #allCourses}.
			{group course title content. group course}}];
		buttons: #(); "Keine Buttons"
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Mitglieder';
				data: [:group | group members];
				buttons: {{'Mitglieder bearbeiten'. 'btn btn-xs btn-success cms-btn-small'. [:component :group | [component assign: CMSUser to: group]]. [:user :group | true]}};
				structure:
					{{'Name'. [:ignore :html :user | html text: user username content]. [:user :member | true]}}.
			CMSTableViewDescription new
				header: 'Themen';
				data: [:group | group topics];
				buttons: {{'Themen wählen'. 'btn btn-xs btn-success cms-btn-small'. [:component :group | [component assign: CMSTopic to: group]]. [:user :group | true]}};
				structure:
					{{'Thema'. [:ignore :html :topic | html text: topic title content]. [:user :topic | true]}.
					{'Beschreibung'. [:ignore :html :topic | html text: topic description content]. [:user :topic | true]}.
					{''. [:component :html :topic |
						html anchor callback: [component view: topic];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :topic | true]}}.
			CMSTableViewDescription new
				header: 'Abgaben';
				data: [:group | group submissions];
				buttons: #();
				structure:
					{{'Abgabe'. [:ignore :html :submission | html text: submission title content]. [:user :submission | true]}.
					{'Termin'. [:ignore :html :submission | html text: submission deadline asString]. [:user :submission | true]}.
					{''. [:component :html :submission |
						html anchor callback: [component view: submission];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :submission | true]}}}