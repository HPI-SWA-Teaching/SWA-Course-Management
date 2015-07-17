rendering
caption

	^ (self class globalPresets at: self data ifAbsent: [^self data title content])
		at: #header