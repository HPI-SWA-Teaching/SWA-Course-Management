as yet unclassified
getTraceDescription

	self data = #allCourses ifTrue: [^{}].
	self data = #userCourses ifTrue: [^{}].
	self data = #userList ifTrue: [^{}].
	self data = #submissionTypes ifTrue: [^{}].
	^ (CMSViewDescription perform: self data class detailsPreset) traceDescription
		value: self data.