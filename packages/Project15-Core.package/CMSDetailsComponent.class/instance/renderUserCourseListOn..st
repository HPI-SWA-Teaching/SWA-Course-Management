rendering - dispatch
renderUserCourseListOn: html

	| preset |
	preset := CMSViewDescription userCourseListPresetFor: self session user.
	self renderHeaderOf: preset On: html.
	self renderTables: preset tables On: html