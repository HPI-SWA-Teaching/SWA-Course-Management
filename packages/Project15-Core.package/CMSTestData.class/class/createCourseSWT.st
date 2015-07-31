as yet unclassified
createCourseSWT

	| userdb course db |

	db := CMSImageDatabase instance userDb.
	userdb := db values.
	
	course := (CMSCourse new) title: (CMSSingleLineString containing: 'SWT');
					description: (CMSMultilineString containing: 'SoftwareEngineering at HPI');
					term: (CMSSemester summer: 2015).
	self initializeTopicsForCourse: course.
	userdb do: [:user |
		user addCourse: course].
	0 to: 4 do: [:groupID |
		| currentGroup |
		currentGroup := course createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: studentNumber)]].
	(db at: #Admin asSymbol) addCourse: course.
	^ course