running
testGreaterOrEqual

	self assert: self WS15 >= self SS14.
	self assert: self WS16 >= self SS14a.
	self assert: self WS16 >= self WS15.
	self deny: self WS15 >= self WS16.
	self deny: self SS14a >= self WS16.
	self assert: self SS14 >= self SS14.