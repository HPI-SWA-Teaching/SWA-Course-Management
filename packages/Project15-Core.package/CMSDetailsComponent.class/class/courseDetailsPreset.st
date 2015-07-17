presets - details
courseDetailsPreset

	^ Dictionary newFrom: {
		#header -> 'Veranstaltungsübersicht'.
		#traceDescription -> [:ignore | {Dictionary newFrom:
			{#label -> 'Alle Lehrveranstaltungen'.
			#destination -> #allCourses}}].
		#buttons -> {Dictionary newFrom:
			{#label -> 'Bearbeiten'.
			#class -> 'btn btn-xs btn-success csm-btn-small'.
			#callbackConstructor -> [:component :course | [component edit: course]].
			#visibilityTest -> [:user :course | user isAdmin]}}.
		#generalStructure ->
			{Dictionary newFrom:
				{#label -> 'Veranstaltung'.
				#contentExtractor -> [:course | course title content]}.
			Dictionary newFrom:
				{#label -> 'Semester'.
				#contentExtractor -> [:course | course term asString]}.
			Dictionary newFrom:
				{#label -> 'Beschreibung'.
				#contentExtractor -> [:course | course description content]}}.
		#tables ->
			{self groupTableWithData: [:course | course groups]
				andButtons: {Dictionary newFrom:
					{#label -> 'Neue Gruppe'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :data | [component assign: CMSUser to: (CMSGroup for: data)]].
					#visibilityTest -> [:user :data | (user isEnrolled: data) | user isAdmin]}}.
			self topicTableWithData: [:course | course topics]
				andButtons: {Dictionary newFrom:
					{#label -> 'Neues Thema'.
					#class -> 'btn btn-xs btn-success'.
					#callbackConstructor -> [:component :data |
						[component editNew: CMSTopic with: [:topic | topic course: data]]]}}.
			self participantTableWithData: [:course | course participents].
			self submissionTableWithData: [:course | course submissions]
				andButtons: {Dictionary newFrom:
					{#label -> 'Neue Abgabe'.
					#class -> 'btn btn-xs btn-success'.
					#callbackConstructor -> [:component :course |
						[component editNew: CMSSubmission with: [:submission | submission course: course]]].
					#visibilityTest -> [:user :course | user isAdmin]}}}}