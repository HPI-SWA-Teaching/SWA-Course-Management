as yet unclassified
renderGroupsOn: html
html div
	class: 'box box-default';
	with: [
		html div
			class: 'box-header';
			with: [
				html heading
					level3;
					class: 'box-title';
					with: 'Groups'.
				html div
					class: 'box-tools';
					with: [
						html anchor
							callback: [self addGroup];
							class: 'btn btn-xs btn-success';
							with: ' New Group']].
		html div
			class: 'box-body no-padding';
			with: [
				html table
					class: 'table';
					with: [
					html tableRow: [
						html tableData: 'Name'.
						html tableData: 'Members'.
						html tableData: ''.
						html tableData: ''.].
					(self course groups sort: self class groupSortingBlock) do: [:group |
						html tableRow: [
							html tableData: group title.
							html tableData: group members size.
							html tableData: [
								html anchor
									class: 'btn btn-xs btn-primary';
									callback: [self viewGroup: group];
									with: 'View'].
							html tableData: [
								self mayManageGroups ifTrue: [
									html anchor
										class: 'btn btn-xs btn-danger';
										callback: [self course removeGroup: group];
										with: 'Delete']]]]]]]