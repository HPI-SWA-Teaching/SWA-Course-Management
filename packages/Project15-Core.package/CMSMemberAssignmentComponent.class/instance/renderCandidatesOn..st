as yet unclassified
renderCandidatesOn: html

	html table: [
		html tableRow: [
			html tableData: 'Course Participants'].
		((CMSImageDatabase instance userDb values
			select: [:user | user canJoinToGroup: self group])
			sort: self class memberSortBlock)
				do: [:member |
					html tableRow: [
						html tableData: member username.
						html tableData: [
							html anchor
								callback: [self group addNewMember: member];
								with: 'Add to group']]]]