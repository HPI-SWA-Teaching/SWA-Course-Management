testing
testStudentsCourseView

	self loginAsStudent.
	self courseViewButton click.

	self viewGroupButtons do: [:each | self assert: each isDisplayed].
	self assert: self viewGroupButtons size > 0.
	self deny: self deleteGroupButtons size > 0.
	
	self assert: self newGroupButton isDisplayed.
	self assert: self newTopicButton isDisplayed.
	