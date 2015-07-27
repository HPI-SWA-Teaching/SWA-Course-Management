accessing
chooseTopic: aCMSTopic

	self topic ifNotNil: [
		self topic removeGroup: self].

	self topic: aCMSTopic.
	aCMSTopic addGroup: self