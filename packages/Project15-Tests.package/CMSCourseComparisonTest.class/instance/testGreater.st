running
testGreater

	self deny: self courseA > self courseA.
	self assert: self courseB > self courseA.
	self deny: self courseA > self courseB.
	self assert: self courseA > self earlierCourseA.
	self assert: self courseB > self earlierCourseA.