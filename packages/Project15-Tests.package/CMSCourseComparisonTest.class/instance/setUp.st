running
setUp

	self courseA:
		(CMSCourse new
			title: 'CourseA';
			term: (CMSSemester winter: self class testedYear));
		courseB:
		(CMSCourse new
			title: 'CourseB';
			term: (CMSSemester winter: self class testedYear));
		earlierCourseA:
		(CMSCourse new
			title: 'CourseA';
			term: (CMSSemester winter: (self class testedYear - 1)))