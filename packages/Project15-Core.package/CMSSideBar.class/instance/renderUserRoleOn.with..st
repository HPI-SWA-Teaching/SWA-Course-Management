rendering
renderUserRoleOn: html with: aCMSUser

	html anchor
		url: '#';
		with: [
			html inserted
				class: 'fa fa-circle text-success'.
				html text: ' ', aCMSUser roleAsString]