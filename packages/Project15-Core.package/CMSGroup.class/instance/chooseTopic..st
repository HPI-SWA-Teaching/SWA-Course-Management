accessing
chooseTopic: aCMSTopic

	self topic ifNotNil: ["leave old topic"
		self topic removeGroup: self].

	self topic: aCMSTopic.
	aCMSTopic addGroup: self