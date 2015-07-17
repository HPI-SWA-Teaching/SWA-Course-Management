testing
testAdminsCourseView

	self loginAsAdmin.
	self courseViewButton click.

	self viewGroupButtons do: [:each | self assert: each isDisplayed].
	self deleteGroupButtons do: [:each | self assert: each isDisplayed].
	self assert: (self viewGroupButtons size > 0).
	self assert: (self viewGroupButtons size = self deleteGroupButtons size).
	
	self assert: self newGroupButton isDisplayed.
	self assert: self newTopicButton isDisplayed.
	self assert: self newSubmissionButton isDisplayed.
	