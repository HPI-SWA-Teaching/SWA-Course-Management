as yet unclassified
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
					with: 'Themen'.
				html div
					class: 'box-tools';
					with: [
						html anchor
							callback: [self createNewTopic];
							class: 'btn btn-xs btn-success';
							with: 'New Topic']].
		html div
			class: 'box-body no-padding';
			with: [
				html table
					class: 'table';
					with: [
						html tableRow: [
							html tableData: 'Name'.
							html tableData: ''.].
						(self course topics sort: self class groupSortingBlock) do: [:topic |
							html tableRow: [
								html tableData: topic title.
								"TODO:html tableData: [
									html anchor
									callback: [self viewGroup: group];
									with: 'View']."
								html tableData: [
									self mayManageTopics ifTrue: [
									html anchor
										class: 'btn btn-xs btn-danger';
										callback: [self course removeTopic: topic];
										with: 'Delete']]]]]]].