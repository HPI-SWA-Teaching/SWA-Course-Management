rendering - dispatch
renderTableScriptsFor: preset on: html

	(preset tables collect: [:table | table header]) do: [:header |
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