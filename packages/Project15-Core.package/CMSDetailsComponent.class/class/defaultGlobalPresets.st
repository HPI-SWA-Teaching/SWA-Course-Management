presets - details
defaultGlobalPresets

	^ Dictionary newFrom:
		{#allCourses -> self globalCourseListPreset.
		#userList -> self userListPreset.
		#userProfile -> self userProfilePreset.
		#submissionTypes -> self submissionTypesPreset.
		CMSCourse -> self courseDetailsPreset.
		CMSGroup -> self groupDetailsPreset.
		CMSTopic -> self topicDetailsPreset.
		CMSSubmission -> self submissionDetailsPreset}