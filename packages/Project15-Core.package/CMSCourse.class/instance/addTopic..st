accessing
addTopic: aCMSTopic

	self topics at: aCMSTopic title content asSymbol put: aCMSTopic.
	aCMSTopic course: self