accessing
remove: aCourse
	
	self leaveAllGroupsOfCourse: aCourse.
	self courses remove: aCourse.
	aCourse remove: self.