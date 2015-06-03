as yet unclassified
initializeCourses

	| course1 course2 userdb |

	userdb := CMSImageDatabase instance userDb.
	
	course1 := (CMSCourse new) title: 'SWA';
					description: 'SoftwareArchitecture at HPI';
					term: (CMSSemester winter: 2015).
	1 to: 100 do: [:userID |
		(userdb at: ('student#' , userID) asSymbol) addCourse: course1.].
	0 to: 9 do: [:groupID |
		| currentGroup |
		currentGroup := course1 createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: ('student#', ((groupID * 10) + studentNumber)) asSymbol)]].

	course2 := (CMSCourse new) title: 'SWT';
					description: 'SoftwareEngineering at HPI';
					term: (CMSSemester summer: 2015).
	1 to: 50 do: [:userID |
		(userdb at: ('student#' , userID) asSymbol) addCourse: course2.].
	0 to: 4 do: [:groupID |
		| currentGroup |
		currentGroup := course2 createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: ('student#', ((groupID * 10) + studentNumber)) asSymbol)]].
	(userdb at: #admin asSymbol) addCourse: course1;
		addCourse: course2.
	CMSImageDatabase instance registerCourse: course1;
		registerCourse: course2.
