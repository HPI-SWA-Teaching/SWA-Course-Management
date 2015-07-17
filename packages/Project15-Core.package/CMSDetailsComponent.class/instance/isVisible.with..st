as yet unclassified
isVisible: aDictionary with: data

	^ (aDictionary at: #visibilityTest ifAbsent: [^true])
		value: self session user value: data