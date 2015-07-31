accessing
assignmentDescriptions

	^ assignmentDescriptions ifNil: [ assignmentDescriptions := self defaultDescriptions].