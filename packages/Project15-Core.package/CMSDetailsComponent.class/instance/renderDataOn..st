rendering - dispatch
renderDataOn: html

	| preset |
	preset := CMSViewDescription perform: self data class detailsPreset.
	self renderHeaderOf: preset On: html.
	self renderTables: preset tables On: html