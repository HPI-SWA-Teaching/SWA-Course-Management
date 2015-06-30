rendering
renderContentOn: html

	self renderGeneralInformationOn: html.
	html div
		class: 'row';
		with: [
			html div
				class: 'col-md-6';
				with: [ self renderGroupsOn: html ].
			html div
				class: 'col-md-6';
				with: [ self renderTopicsOn: html ]]