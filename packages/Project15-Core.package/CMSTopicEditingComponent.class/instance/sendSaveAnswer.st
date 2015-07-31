validating
sendSaveAnswer

	self originalTopic
		ifNil: [self course addTopic: self topic]
		ifNotNil: [self topic copyFrom: self originalTopic].
	self changeBack