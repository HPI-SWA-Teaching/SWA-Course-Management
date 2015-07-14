constants
sortBlock

	^ [:a :b | a term = b term ifTrue: [a title <= b title] ifFalse: [a term <= b term]]