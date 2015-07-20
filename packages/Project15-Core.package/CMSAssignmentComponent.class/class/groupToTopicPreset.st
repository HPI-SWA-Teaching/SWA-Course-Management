presets
groupToTopicPreset

	^ Dictionary newFrom: {
		#members -> (Dictionary newFrom: {
			#items -> [:topic | topic groups].
			#toggleAction -> [:topic :group | group removeTopic: topic].
			#toggleState -> true}).
		#candidates -> (Dictionary newFrom: {
			#items -> [:topic | topic course groups
							reject: [:group | topic groups includes: group]].
			#toggleAction -> [:topic :group | group addTopic: topic].
			#toggleState -> false})}