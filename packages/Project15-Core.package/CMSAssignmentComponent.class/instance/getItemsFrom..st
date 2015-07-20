rendering
getItemsFrom: description

	^ ((description at: #items) value: self predecessorElement) asOrderedCollection