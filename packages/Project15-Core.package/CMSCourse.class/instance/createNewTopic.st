accessing
createNewTopic

	| newTopic |

	newTopic := CMSTopic new course: self.
	self addTopic: newTopic.
	^ newTopic