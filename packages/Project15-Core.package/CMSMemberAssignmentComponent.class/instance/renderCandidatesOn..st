as yet unclassified
renderCandidatesOn: html

	html div
		class: 'box box-danger';
		with: [
			html div
				class: 'box-header';
				with: [
					html heading
						level3
						class: 'box-title';
						with: 'Alle Kursteilnehmer'.].
			html table
				class:'table';
				with: [
					((CMSImageDatabase instance userDb values
						select: [:user | user canJoinToGroup: self group])
						sort: self class memberSortBlock)
							do: [:member |
								html tableRow: [
									html tableData: [
										html checkbox
											callback: [:v | v
												ifTrue: [self group addNewMember: member]]].
									html tableData: member username]]]]