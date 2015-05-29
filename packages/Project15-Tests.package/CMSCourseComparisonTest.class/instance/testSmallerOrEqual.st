running
testSmallerOrEqual

	self assert: self courseA <= self courseA.
	self deny: self courseB <= self courseA.
	self assert: self courseA <= self courseB.
	self assert: self earlierCourseA <= self courseA.
	self assert: self earlierCourseA <= self courseB.