presets
topicToGroupPreset
	
	^ Dictionary newFrom: {
		#members -> (Dictionary newFrom: {
			#items -> [:group | group topics].
			#toggleAction -> [:group :topic | group removeTopic: topic].
			#toggleState -> true}).
		#candidates -> (Dictionary newFrom: {
			#items -> [:group | group course topics
							reject: [:topic | group topics includes: topic]].
			#toggleAction -> [:group :topic | group addTopic: topic].
			#toggleState -> false})}