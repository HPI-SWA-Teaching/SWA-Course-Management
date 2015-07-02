as yet unclassified
createCourseSWT

	| userdb course |

	userdb := CMSImageDatabase instance userDb.
	
	course := (CMSCourse new) title: (CMSTitleString containing: 'SWT');
					description: (CMSDescriptionString containing: 'SoftwareEngineering at HPI');
					term: (CMSSemester summer: 2015).
	1 to: 50 do: [:userID |
		(userdb at: ('student#' , userID) asSymbol) addCourse: course.].
	0 to: 4 do: [:groupID |
		| currentGroup |
		currentGroup := course createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: ('student#', ((groupID * 10) + studentNumber)) asSymbol)]].
	(userdb at: #admin asSymbol) addCourse: course.
	^course.