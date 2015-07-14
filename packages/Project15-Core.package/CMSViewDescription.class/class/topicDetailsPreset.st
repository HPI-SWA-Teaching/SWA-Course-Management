as yet unclassified
topicDetailsPreset

	^ self new
		header: 'Themenübersicht';
		traceDescription: [:topic | {{'Alle Lehrveranstaltungen'. #allCourses}.
			{topic course title content. topic course}}];
		buttons: {{'Bearbeiten'. 'btn btn-xs btn-success csm-btn-small'. [:component :topic | [component edit: topic]]. [:user :topic | (user groups anySatisfy: [:group | group topics includes: topic]) | user isAdmin]}};
		generalStructure:
			{{'Name'. [:topic | topic title content]}.
			{'Beschreibung'. [:topic | topic description content]}};
		tables:
			{CMSTableViewDescription new
				header: 'Teilnehmende Gruppen';
				data: [:topic | topic groups];
				buttons: {{'Gruppen wählen'. 'btn btn-xs btn-success cms-btn-small'. [:component :topic | [component assign: CMSGroup to: topic]]. [:user :topic | user isAdmin]}};
				structure:
					{{'Name'. [:ignore :html :group | html text: group title content]. [:user :member | true]}.
					{''. [:component :html :group |
						html anchor
							class: 'btn btn-xs btn-primary cms-btn-small';
							callback: [component view: group];
							with: 'Ansehen'].
						[:user :group | true]}}}