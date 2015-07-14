as yet unclassified
submissionDetailsPreset

	^ self new
		header: 'Abgabeübersicht';
		traceDescription: [:submission | {{'Alle Lehrveranstaltungen'. #allCourses}.
			{submission course title content. submission course}}];
		buttons: {{'Bearbeiten'. 'btn btn-xs btn-success csm-btn-small'. [:component :submission | [component edit: submission]]. [:user :submission | user isAdmin]}};
		generalStructure:
			{{'Bezeichnung'. [:submission | submission title content]}.
			{'Artefakt'. [:submission | submission type title content]}.
			{'Abgabe'. [:submission | submission deadline asString]}.
			{'Beschreibung'. [:submission | submission description content]}};
		tables:
			{CMSTableViewDescription new
				header: 'Gruppen';
				data: [:submission | submission groups];
				buttons: {{'Gruppen verwalten'. 'btn btn-xs btn-success cms-btn-small'. [:component :submission | [component assign: CMSGroup to: submission]]. [:user :submission | user isAdmin]}};
				structure:
					{{'Gruppe'. [:ignore :html :group | html text: group title content]. [:user :group | true]}.
					{''. [:component :html :group |
						html anchor callback: [component view: group];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :group | true]}}.
			CMSTableViewDescription new
				header: 'Einzelne Studenten';
				data: [:submission | submission assignments];
				buttons: {{'Studenten verwalten'. 'btn btn-xs btn-success cms-btn-small'. [:component :submission | [component assign: CMSUser to: submission]]. [:user :submisison | user isAdmin]}};
				structure:
					{{'Name'. [:ignore :html :user | html text: user title content]. [:user :topic | true]}}}