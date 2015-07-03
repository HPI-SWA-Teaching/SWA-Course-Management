filtering
candidatesFrom: description

	^ ((description allItems value: self predecessorElement)
		reject: [:item | description isMemberBlock value: self predecessorElement value: item])
			asOrderedCollection 