as yet unclassified
leaveCourse: aCourse
	
	self session user remove: aCourse.
	self session messageComponent infoMessage: (CMSMessageComponent infoLeftCourse: aCourse title)