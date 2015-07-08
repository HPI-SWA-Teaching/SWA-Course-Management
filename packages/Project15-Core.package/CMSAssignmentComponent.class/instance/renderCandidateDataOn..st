rendering
renderCandidateDataOn: html
	
	| description |
	description := self predecessorElement class assignmentDescriptions at: self assignmentClass.
	((self candidatesFrom: description) sort: description entrySortBlock)
		do: [:candidate|
			html tableRow: [
				html tableData: [
					html div class: 'checkbox';
						with: [
							html label: [
								html checkbox
									callback: [:v |
										v ifTrue: [description addCandidateBlock value: self predecessorElement value: candidate]].
								html text: candidate title content]]]]].