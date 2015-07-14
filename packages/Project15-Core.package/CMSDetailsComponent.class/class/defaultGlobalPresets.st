accessing
defaultGlobalPresets

	^ Dictionary newFrom:
		{#allCourses -> #globalCourseListPreset.
		#userCourses -> #userCourseListPreset.
		#userGroups -> #userGroupListPreset.
		#userSubmissions -> #userSubmissionListPreset.
		#userList -> #userListPreset.
		#submissionTypes -> #submissionTypesPreset}