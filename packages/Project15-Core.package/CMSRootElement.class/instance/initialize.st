initialization
initialize 
	
	super initialize.
	self components: Dictionary new.
	self mainContent: (self loadComponent: CMSUserCourseListComponent).
	"rendermenubar even if you are not signed in for develop purpose"
	self displayMenuBar.
	