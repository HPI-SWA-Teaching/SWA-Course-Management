rendering - dispatch
renderContentOn: html

	self renderPreset:
		(self detailsPresets
			at: self data class
			ifAbsent: [self detailsPresets at: self data])
		on: html