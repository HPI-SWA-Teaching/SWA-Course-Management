accessing
collectAllSubmissions

	| collection |
	collection := Set new.
	self groups do: [:group | collection addAll: group submissions].
	collection addAll: self submissions.
	^ collection asOrderedCollection