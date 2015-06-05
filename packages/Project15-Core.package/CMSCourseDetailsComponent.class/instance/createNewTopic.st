as yet unclassified
createNewTopic
	
	| editorAnswer |
	self topicEditor topic: (CMSTopic new).
	editorAnswer := self call: self topicEditor.
	editorAnswer = #Save
		ifTrue: [
			self course addTopic: self topicEditor topic.
			self session messageComponent infoMessage: 
				(CMSMessageComponent infoCreateTopic: self topicEditor topic title)
		].
	"#Cancel and #Delete do nothing"