as yet unclassified
showCourse

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSCourseDetailsComponent)
			course: self group course)