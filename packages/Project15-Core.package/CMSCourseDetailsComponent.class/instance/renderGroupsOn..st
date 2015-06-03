as yet unclassified
renderGroupsOn: html

	html text: 'Groups:'.
	self mayManageGroups ifTrue: [
		html anchor
			callback: [self addGroup];
			with: ' New Group'.].
	html table: [
		html tableRow: [
			html tableData: 'Name'.
			html tableData: 'Members'].
		(self course groups sort: self class groupSortingBlock) do: [:group |
			html tableRow: [
				html tableData: group title.
				html tableData: group members size.
				html tableData: [
					html anchor
						callback: [self viewGroup: group];
						with: 'View'].
				html tableData: [
					self mayManageGroups ifTrue: [
						html anchor
							callback: [self course removeGroup: group];
							with: 'Delete']]]]].