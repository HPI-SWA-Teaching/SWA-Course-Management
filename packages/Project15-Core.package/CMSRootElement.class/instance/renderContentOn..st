rendering
renderContentOn: html
"Header -> mit Logo, mit Menü, Logout Button..."

	| c |
	html div 
		class: 'header';
		with: [
			html heading: 'CMS Header' 
		].
"MainContent -> hier werden einzelne Komponeten, wie LoginForm, Tablleen usw. ausgetauscht ausgetausch"
	c := CMSCourseEditingComponent new.
	c course: CMSCourse registeredCourses first.
	html div
		class: 'mainContent';
		with: c.
"Footer -> ..." 
	html div
		class: 'footer';
		with: [
			html text: 'CMS Footer'
		].