as yet unclassified
renderUsersOn: html

	(CMSDatabase userDb values sort: [:a :b | 
		a username <= b username.
	]) do: [:user |
		html tableRow: [
			html tableData: user username.
			html tableData: [
				user = self session user 
					ifFalse: [			
						user isAdmin 
							ifTrue: [
								html anchor 
									callback: [self demote: user];
									with: 'Demote'
							] ifFalse: [
								html anchor 
									callback: [self promote: user];
									with: 'Promote'
							]
					]
			]
		]
	].