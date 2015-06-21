as yet unclassified
renderHeadBoxOn: html

		html div
			class: 'box box-primary';
			with: [
				html div
					class: 'box-header';
					with: [	
						html anchor
							callback: [self returnToGroupView];
							with: 'Zurück zur Gruppenübersicht'.
				
								html submitButton 
									class:'btn btn-xs btn-success';
									callback: [];
									with: 'Speichern'.]]