presets
groupToSubmissionPreset

	^ Dictionary newFrom: {
		#members -> (Dictionary newFrom: {
			#items -> [:submission | submission groups].
			#toggleAction -> [:submission :group | group removeSubmission: submission].
			#toggleState -> true}).
		#candidates -> (Dictionary newFrom: {
			#items -> [:submission | submission course groups
							reject: [:group | submission groups includes: group]].
			#toggleAction -> [:submission :group | group addSubmission: submission].
			#toggleState -> false})}