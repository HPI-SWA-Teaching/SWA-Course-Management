as yet unclassified
renderTraceOn: html

	html text: (self originalCourse ifNil: ['new course'] ifNotNil: [self originalCourse title])