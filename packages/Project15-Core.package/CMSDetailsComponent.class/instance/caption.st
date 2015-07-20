rendering
caption

	^ (self detailsPresets at: self data ifAbsent: [^self data title content])
		at: #header