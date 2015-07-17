validating
sendDeleteAnswer

	self originalTopic ifNotNil:
		[self course removeTopic: self originalTopic].
	self changeBack