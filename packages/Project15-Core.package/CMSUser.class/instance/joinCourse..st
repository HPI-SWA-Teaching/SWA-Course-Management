accessing
joinCourse: aCourse

	aCourse addParticipant: self.
	self courses addNewElement: aCourse.
	^ CMSMessageComponent infoEnroleCourse: aCourse