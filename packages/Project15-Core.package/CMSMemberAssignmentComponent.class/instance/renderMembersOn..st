as yet unclassified
renderMembersOn: html

	html div
		class: 'box box-success';
		with: [
			html div
				class: 'box-header';
				with: [
					html heading
						level3
						class: 'box-title';
						with: 'Aktuelle Gruppenmitglieder'.].
	html table  	
		class: 'table';
		with: [
		(self group members asOrderedCollection sort: self class memberSortBlock)
			do: [:member |
				html tableRow: [
					html tableData: [
						(self canRemoveMember: member) ifTrue: [
							html checkbox
								callback: [:v | v ifFalse:
									[self group removeGroupMember: member.
									self session messageComponent infoMessage: 'Der Nutzer ', member username , ' wurde aus der Gruppe entfernt.']];
								value: true]].
						html tableData: member username]]]]