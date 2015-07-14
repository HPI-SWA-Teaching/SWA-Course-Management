rendering - dispatch
renderSubmissionTypesOn: html

	| preset |
	preset := CMSViewDescription submissionTypesPreset.
	self renderHeaderOf: preset On: html.
	self renderTables: preset tables On: html