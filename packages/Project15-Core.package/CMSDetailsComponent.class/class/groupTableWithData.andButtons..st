presets - tables
groupTableWithData: aBlock andButtons: anArray

	^ Dictionary newFrom: {
		#header -> 'Gruppen'.
		#dataExtractor -> aBlock.
		#buttons -> anArray.
		#structure ->
			{Dictionary newFrom:
				{#label -> 'Gruppe'.
				#contentRenderer -> [:ignore :html :group | html text: group title content]}.
			Dictionary newFrom:
				{#label -> 'Anzahl Mitglieder'.
				#contentRenderer -> [:ignore :html :group | html text: group members size]}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :group |
						html anchor callback: [component view: group];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen']}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :group |
						html anchor callback: [group unregister];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Löschen'].
				#visibilityTest -> [:user :group | user isAdmin]}}}