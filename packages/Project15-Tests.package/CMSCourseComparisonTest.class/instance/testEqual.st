running
testEqual

	self assert: self courseA = self courseA.
	self deny: self courseA = self courseB.
	self deny: self courseA = self earlierCourseA.