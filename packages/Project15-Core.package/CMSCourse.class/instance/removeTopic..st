accessing
removeTopic: aCMSTopic

	self topics removeKey: (aCMSTopic title asSymbol).
	aCMSTopic course: nil