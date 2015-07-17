rendering - dispatch
renderUserGroupListOn: html

	| preset |
	preset := CMSViewDescription userGroupListPresetFor: self session user.
	self renderHeaderOf: preset On: html.
	self renderTables: preset tables On: html