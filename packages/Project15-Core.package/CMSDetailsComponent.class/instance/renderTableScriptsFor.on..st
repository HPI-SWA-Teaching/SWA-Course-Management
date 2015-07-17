rendering - dispatch
renderTableScriptsFor: preset on: html

	((preset at: #tables) collect: [:table | table at: #header]) do: [:header |
		html script:
			'$(function () {
	        		$(''#', header ,''').DataTable({
	          			"lengthChange": false,
	          			"searching": true,
	          			"ordering": true,
	          			"info": true,
	          			"autoWidth": true
	        		});
	      	});'.]