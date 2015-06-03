accessing
leaveAllGroupsOfCourse: aCMSCourse

	"self break."
	(self groups select: [:group | group course = aCMSCourse])
		do: [:group | group removeGroupMember: self].