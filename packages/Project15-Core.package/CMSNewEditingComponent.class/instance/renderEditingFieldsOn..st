rendering
renderEditingFieldsOn: html

	self editedObject getEditingDirectives
		do: [ :directive | 
			html tableRow: [ 
				html text: directive first.
				html break.
				directive second renderEditingFieldsFor: self editedObject On: html.
				html break]]