testing
testGroupParticipation

	self loginAsAdmin.
	self assert: self numberOfAssignedGroups = 0.
	
	self courseViewButton click.
	self viewGroupButton click.
	self editGroupParticipantsButton click.
	self adminCheckbox click.
	self saveButton click.

	self userProfile click.
	self assert: self numberOfAssignedGroups = 1.
	
	self courseViewButton click.
	self viewGroupButton click.
	self editGroupParticipantsButton click.
	self adminCheckbox click.
	self saveButton click.

	self userProfile click.
	self assert: self numberOfAssignedGroups = 0.