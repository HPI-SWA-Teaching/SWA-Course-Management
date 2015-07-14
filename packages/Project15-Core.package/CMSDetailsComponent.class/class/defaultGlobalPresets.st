accessing
defaultGlobalPresets

	^ Dictionary newFrom:
		{#allCourses -> #globalCourseListPreset.
		#userList -> #userListPreset.
		#userProfile -> #userProfilePreset.
		#submissionTypes -> #submissionTypesPreset}