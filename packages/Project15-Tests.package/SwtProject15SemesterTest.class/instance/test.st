running
test

	self assert: self SS14 < self WS15.
	self assert: self WS15 < self WS16.
	self assert: (self WS16 < self SS14) not.
	self assert: self WS16 > self SS14.
	self assert: (self SS14 < self SS14) not.
	self assert: self SS14 = self SS14a.