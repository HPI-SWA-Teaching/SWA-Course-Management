rendering
caption

	^ (self class globalPresets includesKey: self data)
		ifTrue: [(CMSViewDescription perform: (self class globalPresets at: self data)) header]
		ifFalse: [self data title content]