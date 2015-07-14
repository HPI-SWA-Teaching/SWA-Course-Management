as yet unclassified
getTraceDescription

	^ (self class globalPresets includesKey: self data)
		ifTrue: [#()]
		ifFalse: [(CMSViewDescription perform: self data class detailsPreset)
			traceDescription value: self data.]