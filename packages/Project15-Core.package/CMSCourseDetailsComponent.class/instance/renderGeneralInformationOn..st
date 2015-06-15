as yet unclassified
renderGeneralInformationOn: html
html div
	class: 'row';
	with: [
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
								level3;
							class: 'box-title';
								with: 'Course Details'. ].
							html div
								class: 'box-body';
								with: [
									html definitionList
										class: 'dl-horizontal';
										with: [
											html definitionTerm: 'Title'.
											html definitionData: self course title.
											html definitionTerm: 'Term'.
											html definitionData: self course term asString.
											html definitionTerm: 'Description'.
											html definitionData: self course description ]]]]].