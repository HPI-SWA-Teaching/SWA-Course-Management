testing
createNewTopicWith: aString

	| newTopic |

	newTopic := (CMSTopic named: aString)
		course: self.
	self addTopic: newTopic.
	^ newTopic