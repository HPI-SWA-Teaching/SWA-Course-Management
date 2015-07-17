presets - tables
topicTableWithData: aBlock andButtons: anArray

	^ Dictionary newFrom: {
		#header -> 'Themen'.
		#dataExtractor -> aBlock.
		#buttons -> anArray.
		#structure ->
			{Dictionary newFrom:
				{#label -> 'Thema'.
				#contentRenderer -> [:ignore :html :topic | html text: topic title content]}.
			Dictionary newFrom:
				{#label -> 'Beschreibung'.
				#contentRenderer -> [:ignore :html :topic | html text: topic description content]}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :topic |
						html anchor callback: [component view: topic];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen']}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :topic |
						html anchor callback: [topic unregister];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Löschen'].
				#visibilityTest -> [:user :topic | user isAdmin]}}}