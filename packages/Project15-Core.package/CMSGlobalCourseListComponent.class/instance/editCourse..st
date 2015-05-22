as yet unclassified
editCourse: aCMSCourse

	| editorAnswer |
	self editor course: (CMSCourse newFrom: aCMSCourse).
	editorAnswer := self call: self editor.
	editorAnswer = #Save
		ifTrue: [aCMSCourse copyFrom: self editor course].
	"#Cancel does nothing"
	editorAnswer = #Delete
		ifTrue: [CMSDatabase unregisterCourse: aCMSCourse].