presets - tables
submissionTypesTable

	^ Dictionary newFrom:
		{#header -> 'Übersicht Abgabeartefakte'.
		#dataExtractor -> [:ignore | CMSImageDatabase instance submissionTypeDb].
		#buttons -> {Dictionary newFrom:
			{#label -> 'Artefakt anlegen'.
			#class -> 'btn btn-xs btn-success cms-btn-small'.
			#callbackConstructor -> [:component :submissionType |
				[component editNew: CMSSubmissionType]].
			#visibilityTest -> [:user :ignore | user isAdmin]}}.
		#structure ->
			{Dictionary newFrom:
				{#label -> 'Name'.
				#contentRenderer -> [:ignore :html :submissionType | html text: submissionType title content]}.
			Dictionary newFrom:
				{#label -> 'Dateitypen'.
				#contentRenderer -> [:ignore :html :submissionType | html text: submissionType extensions content]}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :submissionType |
						html anchor callback: [component edit: submissionType];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
				#visibilityTest -> [:user :submissionType | user isAdmin]}}}