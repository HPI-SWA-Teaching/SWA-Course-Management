presets - details
submissionDetailsPreset

	^ Dictionary newFrom: {
		#header -> 'Abgabeübersicht'.
		#traceDescription -> [:submission |
			{Dictionary newFrom:
				{#label -> 'Alle Lehrveranstaltungen'.
				#destination -> #allCourses}.
			Dictionary newFrom:
				{#label -> submission course title content.
				#destination -> submission course}}].
		#buttons -> {Dictionary newFrom:
			{#label -> 'Bearbeiten'.
			#class -> 'btn btn-xs btn-success cms-btn-small'.
			#callbackConstructor -> [:component :submission |
				[component edit: submission]].
			#visibilityTest -> [:user :submission | user isAdmin]}}.
		#generalStructure ->
			{Dictionary newFrom:
				{#label -> 'Bezeichnung'.
				#contentExtractor -> [:submission | submission title content]}.
			Dictionary newFrom:
				{#label -> 'Artefakt'.
				#contentExtractor -> [:submission | submission type title content]}.
			Dictionary newFrom:
				{#label -> 'Abgabe'.
				#contentExtractor -> [:submission | submission deadline asString]}.
			Dictionary newFrom:
				{#label -> 'Beschreibung'.
				#contentExtractor -> [:submission | submission description content]}}.
		#tables ->
			{self groupTableWithData: [:submission | submission groups]
				andButtons: {Dictionary newFrom:
					{#label -> 'Gruppen verwalten'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :submission | [component assign: CMSGroup to: submission]].
					#visibilityTest -> [:user :submission | user isAdmin]}}.
			self participantTableWithData: [:submission | submission assignments]
				andCaption: 'Einzelne Studenten'
				andButtons: {Dictionary newFrom:
					{#label -> 'Studenten verwalten'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :submission |
						[component assign: CMSUser to: submission]].
					#visibilityTest -> [:user :submisison | user isAdmin]}}}}