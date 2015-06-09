as yet unclassified
changeBack

	self rootComponent mainContent:
		((self rootComponent loadComponent: CMSCourseDetailsComponent)
			course: self course)