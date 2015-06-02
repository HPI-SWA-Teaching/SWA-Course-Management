as yet unclassified
editCourse: aCMSCourse

	| editorAnswer |
	self editor course: (CMSCourse newFrom: aCMSCourse).
	editorAnswer := self call: self editor.
	editorAnswer = #Save
		ifTrue: [
			aCMSCourse copyFrom: self editor course.
			self session messageComponent infoMessage: (CMSMessageComponent infoSaveCourse: self editor course title).
		].
	editorAnswer = #Delete
		ifTrue: [
			CMSImageDatabase instance unregisterCourse: aCMSCourse.
			self session messageComponent infoMessage: (CMSMessageComponent infoDeleteCourse: self editor course title).
		].
	"#Cancel does nothing"