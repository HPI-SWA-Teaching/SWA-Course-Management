rendering - dispatch
renderGlobalCourseListOn: html

	| preset |
	preset := CMSViewDescription globalCourseListPreset.
	self renderHeaderOf: preset On: html.
	self renderTables: preset tables On: html