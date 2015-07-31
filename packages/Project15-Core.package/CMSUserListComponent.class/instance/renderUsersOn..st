rendering
renderUsersOn: html
	
	html tableBody: [
	(CMSImageDatabase instance userDb values sort: [:a :b | a username <= b username.]) do: [:user |
		html tableRow: [
			html tableData: user username.
			html tableData: (user isAdmin ifTrue: ['Admin'] ifFalse: ['User']).
			html tableData: [
				user = self session user 
					ifFalse: [			
						user isAdmin 
							ifTrue: [
								html anchor 
									callback: [self demote: user];
									with: 'zum User ernennen']
							ifFalse: [
								html anchor 
									callback: [self promote: user];
									with: 'zum Admin ernennen']]]]]]