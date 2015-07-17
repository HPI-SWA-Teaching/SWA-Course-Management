presets - tables
submissionTableWithData: aBlock andButtons: anArray

	^ Dictionary newFrom: {
		#header -> 'Abgaben'.
		#dataExtractor -> [:course | course submissions].
		#buttons -> anArray.
		#structure ->
			{Dictionary newFrom:
				{#label -> 'Name'.
				#contentRenderer -> [:ignore :html :submission | html text: submission title content]}.
			Dictionary newFrom:
				{#label -> 'Artefakt'.
				#contentRenderer -> [:ignore :html :submission | html text: submission type title content]}.
			Dictionary newFrom:
				{#label -> 'Abgabe'.
				#contentRenderer -> [:ignore :html :submission | html text: submission deadline asString]}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :submission |
						html anchor callback: [component view: submission];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen']}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :submission |
						html anchor callback: [component edit: submission];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Bearbeiten'].
				#visibilityTest -> [:user :submission | user isAdmin]}}}