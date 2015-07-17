as yet unclassified
renderMembersOn: html

	self mayAssignMembers ifTrue: [
		
		html table
			class: 'table';
			with: [
				(self group members asOrderedCollection sort: self class memberSortBlock) 					do: [:member |
						html tableRow: [
						html tableData: member username]]]]
				
"
	html text: 'Members: '.
	self mayAssignMembers ifTrue: [
		html anchor
			callback: [self assignMembers];
			with: 'Assign Members'.].
	html table: [
		(self group members asOrderedCollection sort: self class memberSortBlock) do: [:member |
			html tableRow: [
				html tableData: member username]]]."