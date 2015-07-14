as yet unclassified
getEditingTraceDescription

	^ {{CMSViewDescription globalCourseListPreset header. #allCourses}.
		{self course title content. self course}.
		{self title content. self}}