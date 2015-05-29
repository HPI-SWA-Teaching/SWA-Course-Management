as yet unclassified
enroleCourse: aCourse

	self session user addCourse: aCourse.
	self session messageComponent infoMessage: (CMSMessageComponent infoEnroleCourse: aCourse title).