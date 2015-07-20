presets
userToSubmissionPreset

	^ Dictionary newFrom: {
		#members -> (Dictionary newFrom: {
			#items -> [:submission | submission assignments].
			#toggleAction -> [:submission :user | user removeSubmission: submission].
			#toggleState -> true}).
		#candidates -> (Dictionary newFrom: {
			#items -> [:submission | submission course participents
							reject: [:participant | submission assignments includes: participant]].
			#toggleAction -> [:submission :user | user addSubmission: submission].
			#toggleState -> false})}