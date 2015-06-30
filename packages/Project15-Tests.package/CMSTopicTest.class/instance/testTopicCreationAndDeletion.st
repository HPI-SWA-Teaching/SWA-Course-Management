running
testTopicCreationAndDeletion

	| course topic |
	course := CMSCourse new.

	self assert: course topics isEmpty.

	topic := course createNewTopicWith: self class topicName.

	self deny: course topics isEmpty.
	self assert: (course topics includesKey: topic title).
	self assert: topic course = course.
	self assert: topic title = self class topicName.

	course removeTopic: topic.

	self assert: course topics isEmpty.
	self deny: topic course = course.