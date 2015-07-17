as yet unclassified
getEditingTraceDescription

	^ {Dictionary newFrom:
			{#label -> (CMSDetailsComponent globalCourseListPreset at: #header).
			#destination -> #allCourses}.
		Dictionary newFrom:
			{#label -> self title content.
			#destination -> self}}