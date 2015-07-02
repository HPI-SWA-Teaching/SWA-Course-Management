running
setUp

	self courseA:
		(CMSCourse new
			title: (CMSTitleString containing: 'CourseA');
			term: (CMSSemester winter: self class testedYear));
		courseB:
		(CMSCourse new
			title: (CMSTitleString containing: 'CourseB');
			term: (CMSSemester winter: self class testedYear));
		earlierCourseA:
		(CMSCourse new
			title: (CMSTitleString containing: 'CourseA');
			term: (CMSSemester winter: (self class testedYear - 1)))