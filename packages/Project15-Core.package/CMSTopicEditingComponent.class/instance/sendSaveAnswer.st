validating
sendSaveAnswer

	self originalTopic
		ifNil: [
			self course addTopic: self topic.
			self session messageComponent infoMessage: (CMSMessageComponent infoCreateTopic: self topic title).]
		ifNotNil: [
			self topic copyFrom: self originalTopic.
			self session messageComponent infoMessage: (CMSMessageComponent infoEditTopic: self topic title).].
	self changeBack