validating
sendSaveAnswer

	self originalCourse
		ifNil: [CMSImageDatabase instance registerCourse: self course]
		ifNotNil: [self originalCourse copyFrom: self course].
	self changeBack
	