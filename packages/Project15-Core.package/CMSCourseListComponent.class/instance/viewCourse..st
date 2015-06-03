as yet unclassified
viewCourse: aCMSCourse

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSCourseDetailsComponent)
			course: aCMSCourse).