as yet unclassified
renderMembersOn: html

	html table: [
		html tableRow: [
			html tableData: 'Members'].
		(self group members asOrderedCollection sort: self class memberSortBlock)
			do: [:member |
				html tableRow: [
					html tableData: member username.
					html tableData: [
						(self canRemoveMember: member) ifTrue: [
							html anchor
								callback: [self group removeGroupMember: member];
								with: 'Remove']]]]]