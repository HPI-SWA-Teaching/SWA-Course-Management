rendering
renderButtons: anArray On: html

	anArray do: [:but |
		self ifVisible: but
			with: self data
			then: [
				html anchor
					callback: ((but at: #callbackConstructor)
						value: self value: self data);
					class: (but at: #class);
					with: (but at: #label)]]