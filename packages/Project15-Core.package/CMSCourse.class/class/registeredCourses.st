accessing
registeredCourses

	^ registeredCourses ifNil: [registeredCourses := OrderedCollection new]