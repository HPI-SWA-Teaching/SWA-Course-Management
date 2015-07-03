rendering
renderMembersDataOn: html

	| description |
	description := self predecessorElement class assignmentDescriptions at: self assignmentClass.
	((self membersFrom: description) sort: description entrySortBlock) 
		do: [ :member| 
			html tableRow: [
				html tableData: [
					html div class: 'checkbox';
						with: [
							html label: [
								html checkbox value: true;
									callback: [:v |
										v ifFalse: [description removeMemberBlock value: self predecessorElement value: member]].
								html text: member title]]]]].