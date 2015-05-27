accessing
unregisterCourse: aCourse

	aCourse removeAllParticipants.
	self courseDb remove: aCourse.