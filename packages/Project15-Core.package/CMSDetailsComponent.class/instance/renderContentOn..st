rendering - dispatch
renderContentOn: html

	self renderPreset:
		(self class globalPresets
			at: self data class
			ifAbsent: [self class globalPresets at: self data])
		on: html