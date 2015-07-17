presets - tables
participantTableWithData: aBlock andButtons: anArray

	^ Dictionary newFrom: {
		#header -> 'Teilnehmer'.
		#dataExtractor -> aBlock.
		#buttons -> anArray.
		#structure -> {Dictionary newFrom:
			{#label -> 'Name'.
			#contentRenderer -> [:ignore :html :user | html text: user title content]}}}