testing
testTopicCreation

	self loginAsAdmin.
	self courseViewButton click.

	self newTopicButton click.
	
	self topicEditingTitle sendKeys: 'testtopic'.
	self topicEditingInformations sendKeys: 'Lorem Ipsum'.

	self saveButton click.

	self assert: self infoMessage isDisplayed. 
	self assert: (self isTextPresent: 'testtopic').
	self assert: (self isTextPresent: 'Lorem Ipsum').

	self deleteTopicButton click.
	