rendering - dispatch
renderContentOn: html

	"TODO: Diese Unterscheidung schöner gestalten"
	self data = #allCourses ifTrue: [self renderGlobalCourseListOn: html. ^self].
	self data = #userCourses ifTrue: [self renderUserCourseListOn: html. ^self].
	self data = #userList ifTrue: [self renderUserListOn: html. ^self].
	self data = #submissionTypes ifTrue: [self renderSubmissionTypesOn: html. ^self].
	self data = #userGroups ifTrue: [self renderUserGroupListOn: html. ^self].
	self data = #userSubmissions ifTrue: [self renderUserSubmissionsOn: html. ^self].
	self renderDataOn: html.