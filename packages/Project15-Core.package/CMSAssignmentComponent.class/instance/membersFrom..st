filtering
membersFrom: description

	^ ((description allItems value: self predecessorElement)
		select: [:item | description isMemberBlock value: self predecessorElement value: item])
			asOrderedCollection