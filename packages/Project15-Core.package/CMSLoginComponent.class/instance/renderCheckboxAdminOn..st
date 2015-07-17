rendering
renderCheckboxAdminOn: html
	
	 html 
		tableData: [html text: 'Login as admin? '];
		tableData: [html checkbox on: #isAdmin of: self]. 