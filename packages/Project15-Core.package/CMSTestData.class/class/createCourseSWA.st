as yet unclassified
createCourseSWA

	| userdb course db |

	db := CMSImageDatabase instance userDb.
	userdb := db values.
	
	course := (CMSCourse new) title: (CMSSingleLineString containing: 'SWA');
					description: (CMSMultilineString containing: 'SoftwareArchitecture at HPI');
					term: (CMSSemester winter: 2015).
	userdb do: [:user |
		user addCourse: course.].
	0 to: 9 do: [:groupID |
		| currentGroup |
		currentGroup := course createNewGroup.
			1 to: 10 do: [ :studentNumber |
				currentGroup addNewMember: (userdb at: studentNumber).]].
	(db at: #Admin asSymbol) addCourse: course.
	^course.