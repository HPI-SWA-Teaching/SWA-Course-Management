rendering - dispatch
renderContentOn: html

	self data = #allCourses ifTrue: [self renderGlobalCourseListOn: html. ^self].
	self data = #userCourses ifTrue: [self renderUserCourseListOn: html. ^self].
	self data = #userList ifTrue: [self renderUserListOn: html. ^self].
	self data = #submissionTypes ifTrue: [self renderSubmissionTypesOn: html. ^self].
	self renderDataOn: html.