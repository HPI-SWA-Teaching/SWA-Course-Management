as yet unclassified
renderCandidatesOn: html

	html table: [
		html tableRow: [
			html tableData.
			html tableData: 'Alle Kursteilnehmer:'].
		((CMSImageDatabase instance userDb values
			select: [:user | user canJoinToGroup: self group])
			sort: self class memberSortBlock)
				do: [:member |
					html tableRow: [
						html tableData: [
							html checkbox
								callback: [:v | v
									ifTrue: [self group addNewMember: member]]].
						html tableData: member username]]]