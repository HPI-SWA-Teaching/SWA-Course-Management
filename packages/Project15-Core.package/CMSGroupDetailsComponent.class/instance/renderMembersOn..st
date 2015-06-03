as yet unclassified
renderMembersOn: html

	html text: 'Members: '.
	self mayAssignMembers ifTrue: [
		html anchor
			callback: [self assignMembers];
			with: 'Assign Members'.].
	html table: [
		(self group members asOrderedCollection sort: self class memberSortBlock) do: [:member |
			html tableRow: [
				html tableData: member username]]].