rendering
renderContentOn: html

	html div
		class: 'row';
		with:  [
			html div
				class: 'col-md-12';
				with: [
				html div
					class: 'box box-default';
					with: [
						html div
							class: 'box-header';
								with: [
									html heading
										level3
										class: 'box-title';
										with: 'Veranstaltungsverzeichnis'.
								self shouldRenderNewButton
									ifTrue: [self renderNewCourseButtonOn: html]].
							html div
								class: 'box-body';
								with: [
									html table
										class: 'table';
										with: [
											self renderTableHeadersOn: html.
											self renderCoursesOn: html]]]]]