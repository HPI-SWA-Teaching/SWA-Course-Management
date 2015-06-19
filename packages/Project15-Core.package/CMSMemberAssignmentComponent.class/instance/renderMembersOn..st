as yet unclassified
renderMembersOn: html

	html table: [
		html tableRow: [
			html tableData.
			html tableData: 'Aktuelle Gruppenmitglieder:'].
		(self group members asOrderedCollection sort: self class memberSortBlock)
			do: [:member |
				html tableRow: [
					html tableData: [
						(self canRemoveMember: member) ifTrue: [
							html checkbox
								callback: [:v | v ifFalse:
									[self group removeGroupMember: member]];
								value: true]].
						html tableData: member username]]].
						html break.