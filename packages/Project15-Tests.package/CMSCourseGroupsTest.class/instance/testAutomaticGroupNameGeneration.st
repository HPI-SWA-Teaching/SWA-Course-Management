running
testAutomaticGroupNameGeneration

	| course group1 group2 |
	course := CMSCourse new.
	group1 := course createNewGroup.
	group2 := course createNewGroup.

	self assert: (group1 title = (CMSCourse defaultGroupNamePrefix, 1)).
	self assert: (group2 title = (CMSCourse defaultGroupNamePrefix, 2)).

	group1 unregister.
	group1 := course createNewGroup.

	self assert: (group1 title = (CMSCourse defaultGroupNamePrefix, 1)).