as yet unclassified
editCourse: aCMSCourse

	| editedCourse |
	self editor course: (CMSCourse newFrom: aCMSCourse).
	editedCourse := self call: self editor.
	editedCourse ifNotNil: [
		aCMSCourse copyFrom: editedCourse]