as yet unclassified
getDefaultGroupName

	| number |
	number := 1.
	[self groups anySatisfy: [:group |
		group title content = (self class defaultGroupNamePrefix, number)]]
		whileTrue: [number := number + 1].
	^ self class defaultGroupNamePrefix, number