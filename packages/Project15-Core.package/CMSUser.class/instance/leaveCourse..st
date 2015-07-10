accessing
leaveCourse: aCourse
	
	self leaveAllGroupsOfCourse: aCourse.
	self courses remove: aCourse.
	aCourse removeParticipant: self.
	^ CMSMessageComponent infoLeftCourse: aCourse.