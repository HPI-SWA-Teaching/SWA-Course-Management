as yet unclassified
renderMembersOn: html

	html text: 'Gruppenmitglieder: '.
	self mayAssignMembers ifTrue: [
		html anchor
			callback: [self assignMembers];
			with: 'Mitglieder bearbeiten'.].
	html table: [
		(self group members asOrderedCollection sort: self class memberSortBlock) do: [:member |
			html tableRow: [
				html tableData: member username]]].