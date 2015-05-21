rendering
renderContentOn: html
"Header -> mit Logo, mit Menü, Logout Button..."
	html div 
		class: 'header';
		with: self menuContent.
"MainContent -> hier werden einzelne Komponeten, wie LoginForm, Tablleen usw. ausgetauscht ausgetausch"
	html div
		class: 'mainContent';
		with: self mainContent.
"Footer -> ..." 
	html div
		class: 'footer';
		with: [
			html text: 'CMS Footer'
		].