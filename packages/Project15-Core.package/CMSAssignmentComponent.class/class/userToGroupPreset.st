presets
userToGroupPreset
	
	^ Dictionary newFrom: {
		#members -> (Dictionary newFrom: {
			#items -> [:group | group members].
			#toggleAction -> [:group :user | group removeGroupMember: user].
			#toggleState -> true}).
		#candidates -> (Dictionary newFrom: {
			#items -> [:group | group course participents
							reject: [:participant | participant participatesIn: group]].
			#toggleAction -> [:group :user | group addNewMember: user].
			#toggleState -> false})}