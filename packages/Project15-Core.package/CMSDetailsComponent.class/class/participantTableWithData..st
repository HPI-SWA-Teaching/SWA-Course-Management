presets - tables
participantTableWithData: aBlock

	^ Dictionary newFrom: {
		#header -> 'Teilnehmer'.
		#dataExtractor -> aBlock.
		#structure -> {Dictionary newFrom:
			{#label -> 'Name'.
			#contentRenderer -> [:ignore :html :user | html text: user title content]}}}