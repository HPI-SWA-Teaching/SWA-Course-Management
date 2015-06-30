accessing
addTopic: aCMSTopic

	self topics at: aCMSTopic title asSymbol put: aCMSTopic.
	aCMSTopic course: self