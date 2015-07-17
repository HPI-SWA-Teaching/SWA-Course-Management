as yet unclassified
getEditingTraceDescription

	^ {Dictionary newFrom:
			{#label -> (CMSDetailsComponent submissionTypesPreset at: #header).
			#destination -> #submissionTypes}.
		Dictionary newFrom:
			{#label -> self title content.
			#destination -> self}}