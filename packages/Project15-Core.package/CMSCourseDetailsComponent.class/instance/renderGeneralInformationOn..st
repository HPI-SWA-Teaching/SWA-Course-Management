rendering
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
									with: 'Veranstaltung:'. ].
								html div
									class: 'box-body';
									with: [
										html definitionList
											class: 'dl-horizontal';
											with: [
												html definitionTerm: 'Veranstaltung:'.
												html definitionData: self course title.
												html definitionTerm: 'Semester'.
												html definitionData: self course term asString.
												html definitionTerm: 'Zusatzinformation:'.
												html definitionData: self course description]]]]]