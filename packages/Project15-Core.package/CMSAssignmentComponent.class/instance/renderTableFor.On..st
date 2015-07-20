rendering
renderTableFor: aSymbol On: html

	| description |
	description := ((self assignmentPresets at: self predecessorElement class) at: self assignmentClass) at: aSymbol.
	((self getItemsFrom: description) sort: (self assignmentClass sortBlock)) 
		do: [:item | 
			html tableRow: [
				html tableData: [
					self renderCheckboxFor: item
						definedBy: description
						on: html.
"					html div class: 'checkbox';
						with: [
							html label: [
								html checkbox value: true;
									callback: [:v |
										v ifFalse: [(description at: #removeMemberBlock) value: self predecessorElement value: member]].
								html text: member title content]]"]]].