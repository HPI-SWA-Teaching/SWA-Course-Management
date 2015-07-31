rendering
renderTopicsOn: html

	html div
		class: 'box box-default';
		with: [
			html div
				class: 'box-header';
				with: [
					html heading
						level3;
						class: 'box-title';
						with: 'Themenübersicht'.
					html div
						class: 'box-tools';
						with: [
							html anchor
								callback: [self createNewTopic];
								class: 'btn btn-xs btn-success';
								with: 'Neues Thema erstellen']].
			html div
				class: 'box-body no-padding';
				with: [
					html table
						class: 'table';
						with: [
							html tableRow: [
								html tableHeading: 'Name'.
								html tableHeading: 'Beschreibung'.
								html tableHeading: ''.].
								((self course topics asOrderedCollection) sort: self class groupSortingBlock) do: [:topic |
									html tableRow: [
										html tableData: topic title content.
										html tableData: topic description content.
										html tableData: [
											html anchor
											class: 'btn btn-xs btn-primary';
											callback: [self viewTopic: topic];
											with: 'Anzeigen'].
										html tableData: [
											self mayManageTopics ifTrue: [
											html anchor
												class: 'btn btn-xs btn-danger';
												callback: [self course removeTopic: topic];
												with: 'Löschen']]]]]]]