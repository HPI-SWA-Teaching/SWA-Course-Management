as yet unclassified
getTraceDescription

	^ ((self class globalPresets at: self data class ifAbsent:
		[self class globalPresets at: self data]) at: #traceDescription ifAbsent: [^#()])
			value: self data