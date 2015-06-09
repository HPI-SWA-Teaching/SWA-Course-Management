as yet unclassified
createNewTopic

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSTopicEditingComponent)
			setUpNewTopic;
			course: self course)

"	| editorAnswer |
	self topicEditor setUpChangeBackBlockFor: self course.
	self topicEditor topic: (CMSTopic new).
	editorAnswer := self call: self topicEditor.
	editorAnswer = #Save
		ifTrue: [
			self course addTopic: self topicEditor topic.
			self session messageComponent infoMessage: 
				(CMSMessageComponent infoCreateTopic: self topicEditor topic title)].
	'#Cancel and #Delete do nothing'"