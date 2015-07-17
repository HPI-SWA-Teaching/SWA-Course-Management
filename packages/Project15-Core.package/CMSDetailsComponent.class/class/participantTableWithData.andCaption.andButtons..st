presets - tables
participantTableWithData: aBlock andCaption: aString andButtons: anArray

	^ Dictionary newFrom: {
		#header -> aString.
		#dataExtractor -> aBlock.
		#buttons -> anArray.
		#structure -> {Dictionary newFrom:
			{#label -> 'Name'.
			#contentRenderer -> [:ignore :html :user | html text: user title content]}}}