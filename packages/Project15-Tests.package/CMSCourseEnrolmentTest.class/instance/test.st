running
test

	self assert: self participant courses isEmpty.
	self assert: self course participents isEmpty.

	self participant addCourse: self course.

	self assert: (self participant courses includes: self course).
	self assert: (self course participents includes: self participant).

	self participant remove: self course.

	self deny: (self participant courses includes: self course).
	self deny: (self course participents includes: self participant)

	