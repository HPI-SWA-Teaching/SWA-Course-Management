as yet unclassified
topicDetailsPreset

	^ self new
		header: 'Themenübersicht';
		traceDescription: [:topic | {{'Alle Lehrveranstaltungen'. #allCourses}.
			{topic course title content. topic course}}];
		buttons: #(); "Keine Buttons"
		generalStructure:
			{{'Name'. [:topic | topic title content]}.
			{'Beschreibung'. [:topic | topic description content]}};
		tables:
			{CMSTableViewDescription new
				header: 'Teilnehmende Gruppen';
				data: [:topic | topic groups];
				buttons: {{'Gruppen wählen'. 'btn btn-xs btn-success cms-btn-small'. [:component :topic | [component assign: CMSGroup to: topic]]. [:user | user isAdmin]}};
				structure:
					{{'Name'. [:ignore :html :group | html text: group title content]. [:user :member | true]}}}