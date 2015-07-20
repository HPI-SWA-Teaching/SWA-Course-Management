presets
defaultPresets

	^ Dictionary newFrom: {
		CMSGroup -> (Dictionary newFrom: {
			CMSUser -> self userToGroupPreset.
			CMSTopic -> self topicToGroupPreset}).
		CMSSubmission -> (Dictionary newFrom: {
			CMSUser -> self userToSubmissionPreset.
			CMSGroup -> self groupToSubmissionPreset}).
		CMSTopic -> (Dictionary newFrom: {
			CMSGroup -> self groupToTopicPreset})}