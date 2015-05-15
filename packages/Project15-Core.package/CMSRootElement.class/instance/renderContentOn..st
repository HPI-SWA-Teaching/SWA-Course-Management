rendering
renderContentOn: html
"Header -> mit Logo, mit Menü, Logout Button..."
	html div 
		class: 'header';
		with: [
			html heading: 'CMS Header' 
		].
"MainContent -> hier werden einzelne Komponeten, wie LoginForm, Tablleen usw. ausgetauscht ausgetausch"
	html div
		class: 'mainContent';
		with: CMSCourseListComponent new.
"Footer -> ..." 
	html div
		class: 'footer';
		with: [
			html text: 'CMS Footer'
		].