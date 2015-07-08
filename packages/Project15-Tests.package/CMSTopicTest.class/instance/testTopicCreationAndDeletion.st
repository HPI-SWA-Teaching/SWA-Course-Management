running
testTopicCreationAndDeletion

	| course topic |
	course := CMSCourse new.

	self assert: course topics isEmpty.

	topic := course createNewTopicWith: self class topicName.

	self deny: course topics isEmpty.
	self assert: (course topics includesKey: topic title content).
	self assert: topic course = course.
	self assert: topic title = self class topicName.

	topic unregister.

	self assert: course topics isEmpty.