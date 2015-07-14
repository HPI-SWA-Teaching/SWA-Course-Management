rendering - dispatch
renderContentOn: html

	self renderPreset:
		(CMSViewDescription perform:
			(self class globalPresets
				at: self data
				ifAbsent: [self data class detailsPreset]))
		on: html