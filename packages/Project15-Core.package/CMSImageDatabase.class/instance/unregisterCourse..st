objects from disk
unregisterCourse: aCourse

	aCourse removeAllParticipants.
	self courseDb remove: aCourse.