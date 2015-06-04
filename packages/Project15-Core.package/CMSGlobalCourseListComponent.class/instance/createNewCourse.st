as yet unclassified
createNewCourse

	| editorAnswer |
	self editor course: (CMSCourse new).
	editorAnswer := self call: self editor.
	editorAnswer = #Save
		ifTrue: [
			CMSImageDatabase instance registerCourse: self editor course.
			self session messageComponent infoMessage: (CMSMessageComponent infoCreateCourse: self editor course title)].
	"#Cancel and #Delete do nothing"