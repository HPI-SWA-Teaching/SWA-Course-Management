rendering
renderInputUsernameOn: html 
	
	html
		tableData: [html text: 'Username: '];
		tableData: [html textInput on: #username of: self; id: 'username'].