running
testEqual

	self assert: self SS14 = self SS14.
	self assert: self SS14 = self SS14a.
	self deny: self SS14 = self WS15.
	self deny: self SS14 = self WS16.