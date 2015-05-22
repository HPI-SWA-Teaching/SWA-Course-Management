rendering
renderContentOn: html
"Header -> mit Logo, mit Menü, Logout Button..."
	html div 
		class: 'header';
		with: [
			html heading: 'CMS Header' 
		].
"MainContent -> hier werden einzelne Komponeten, wie LoginComponent, Tabellen usw. ausgetauscht"
	html div
		class: 'mainContent';
		with: self mainContent.
"Footer -> ..." 
	html div
		class: 'footer';
		with: self footer.