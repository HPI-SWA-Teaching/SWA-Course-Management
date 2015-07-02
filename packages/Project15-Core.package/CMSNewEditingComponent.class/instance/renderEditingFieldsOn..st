as yet unclassified
renderEditingFieldsOn: html

	self editedObject getEditingDirectives do: [ :directive |
		html tableRow: [
			html text: directive first.
			directive second renderEditingFieldsOn: html]]