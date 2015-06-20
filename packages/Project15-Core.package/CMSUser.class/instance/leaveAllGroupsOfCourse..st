accessing
leaveAllGroupsOfCourse: aCMSCourse

	(self groups select: [:group | group course = aCMSCourse])
		do: [:group | group removeGroupMember: self]