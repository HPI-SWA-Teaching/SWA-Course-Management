presets - details
groupDetailsPreset

	^ Dictionary  newFrom: {
		#header -> 'Gruppenübersicht'.
		#traceDescription -> [:group |
			{Dictionary newFrom:
				{#label -> 'Alle Lehrveranstaltungen'.
				#destination -> #allCourses}.
			Dictionary newFrom:
				{#label -> group course title content.
				#destination -> group course}}].
		#tables ->
			{self participantTableWithData: [:group | group members]
				andButtons: {Dictionary newFrom:
					{#label -> 'Mitglieder bearbeiten'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :group | [component assign: CMSUser to: group]]}}.
			self topicTableWithData: [:group | group topics]
				andButtons: {Dictionary newFrom:
					{#label -> 'Themen wählen'.
					#class -> 'btn btn-xs btn-success cms-btn-small'.
					#callbackConstructor -> [:component :group | [component assign: CMSTopic to: group]]}}.
			self submissionTableWithData: [:group | group submissions]}}