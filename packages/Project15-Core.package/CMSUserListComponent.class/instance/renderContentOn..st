as yet unclassified
renderContentOn: html
	
	html render: self session messageComponent.
	html div
		class: 'row';
		with: [
			html div
				class: 'col-md-12';
				with: [
					html div
						class: 'box box-default';
						with: [
							html div
								class: 'box-header';
								with: [
									html heading
										class: 'box-title';
										with: 'Registrierte Nutzer'].
							html div 
								class: 'box-body';
								with: [			
									html table
										id: 'datatable';
										class: 'table';
										with: [
											self renderHeaderOn: html.
											self renderUsersOn: html]]]]].
	html script:
		'$(function () {
        		$(''#datatable'').DataTable({
          			"lengthChange": false,
          			"searching": true,
          			"ordering": true,
          			"info": true,
          			"autoWidth": true
        		});
      	});'.