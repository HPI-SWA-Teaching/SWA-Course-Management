presets - details
topicDetailsPreset

	^ Dictionary newFrom: {
		#header -> 'Themenübersicht'.
		#traceDescription -> [:topic |
			{Dictionary newFrom:
				{#label -> 'Alle Lehrveranstaltungen'.
				#destination -> #allCourses}.
			Dictionary newFrom:
				{#label -> topic course title content.
				#destination -> topic course}}].
		#buttons -> {Dictionary newFrom:
			{#label -> 'Bearbeiten'.
			#class -> 'btn btn-xs btn-success csm-btn-small'.
			#callbackConstructor -> [:component :topic |
				[component edit: topic]].
			#visibilityTest -> [:user :topic | (user groups anySatisfy: [:group | group topics includes: topic]) | user isAdmin]}}.
		#generalStructure ->
			{Dictionary newFrom:
				{#label -> 'Name'.
				#contentExtractor -> [:topic | topic title content]}.
			Dictionary newFrom:
				{#label -> 'Beschreibung'.
				#contentExtractor -> [:topic | topic description content]}}.
		#tables ->
			{self groupTableWithData: [:topic | topic groups]
				andCaption: 'Teilnehmende Gruppen'
				andButtons: {Dictionary newFrom:
					{#label -> 'Gruppen wählen'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :topic |
						[component assign: CMSGroup to: topic]].
					#visibilityTest -> [:user :topic | user isAdmin]}}}}