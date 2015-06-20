accessing
createNewTopicWith: aString

	| newTopic |

	newTopic := (CMSTopic named: aString)
		course: self.
	self topics add: newTopic.
	^ newTopic