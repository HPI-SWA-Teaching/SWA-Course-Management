as yet unclassified
createNewCourse

	| editorAnswer |
	self editor course: (CMSCourse new).
	editorAnswer := self call: self editor.
	editorAnswer = #Save
		ifTrue: [CMSSession registeredCourses add: self editor course].
	"#Cancel & #Delete do nothing"