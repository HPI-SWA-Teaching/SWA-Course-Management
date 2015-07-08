running
setUp

	self courseA:
		(CMSCourse new
			title: (CMSSingleLineString containing: 'CourseA');
			term: (CMSSemester winter: self class testedYear));
		courseB:
		(CMSCourse new
			title: (CMSSingleLineString containing: 'CourseB');
			term: (CMSSemester winter: self class testedYear));
		earlierCourseA:
		(CMSCourse new
			title: (CMSSingleLineString containing: 'CourseA');
			term: (CMSSemester winter: (self class testedYear - 1)))