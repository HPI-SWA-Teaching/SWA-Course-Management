as yet unclassified
createCourseSWA

	| userdb course |

	userdb := CMSImageDatabase instance userDb.
	
	course := (CMSCourse new) title: (CMSSingleLineString containing: 'SWA');
					description: (CMSMultilineString containing: 'SoftwareArchitecture at HPI');
					term: (CMSSemester winter: 2015).
	1 to: 100 do: [:userID |
		(userdb at: ('student#' , userID) asSymbol) addCourse: course.].
	0 to: 9 do: [:groupID |
		| currentGroup |
		currentGroup := course createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: ('student#', ((groupID * 10) + studentNumber)) asSymbol)]].
	(userdb at: #admin asSymbol) addCourse: course.
	^course.