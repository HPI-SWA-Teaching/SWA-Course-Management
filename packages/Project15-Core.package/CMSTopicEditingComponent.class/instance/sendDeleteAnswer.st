validating
sendDeleteAnswer

	self originalTopic ifNotNil: [
		self course removeTopic: self originalTopic.
		self session messageComponent infoMessage: (CMSMessageComponent infoDeleteTopic: self topic title)].
	self changeBack