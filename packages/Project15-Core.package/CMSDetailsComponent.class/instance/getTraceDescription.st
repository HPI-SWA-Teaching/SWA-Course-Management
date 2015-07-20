as yet unclassified
getTraceDescription

	^ ((self detailsPresets at: self data class ifAbsent:
		[self detailsPresets at: self data]) at: #traceDescription ifAbsent: [^#()])
			value: self data