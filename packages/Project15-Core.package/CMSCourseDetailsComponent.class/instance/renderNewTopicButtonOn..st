as yet unclassified
renderNewTopicButtonOn: html
	
	|topicComponent|
	html div
		class: 'btn btn-xs btn-success';
		attributeAt: 'type' put: 'button';
		attributeAt: 'data-toggle' put: 'modal';
		attributeAt: 'data-target' put: '#myModal';
		with: 'Neues Thema'.
	topicComponent := (rootComponent loadComponent: CMSTopicEditingComponent).
	html render: topicComponent.
	topicComponent setUpNewTopic.
		
		
	
	