validating
sendDeleteAnswer

	self originalCourse ifNotNil:
		[CMSImageDatabase instance unregisterCourse: self originalCourse].
	self changeBack
	