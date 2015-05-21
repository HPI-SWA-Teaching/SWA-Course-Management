as yet unclassified
renderMenuBarOn: html

	html table:[
			html tableRow:[
				html tableData: [ html anchor
									callback: [rootComponent mainContent: CMSCourseListComponent new.];
									with: 'Aktuelle Lehrveranstaltungen'.
								html space.].
				html tableData: [ html anchor 
									callback: [ self session logout.
												rootComponent mainContent: CMSLoginComponent new.];
									with: 'ausloggen'].]]