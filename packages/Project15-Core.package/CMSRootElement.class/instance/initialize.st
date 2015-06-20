initialization
initialize 
	
	super initialize.
	self components: Dictionary new.
	self setMainContentTo: CMSUserCourseListComponent.
	self sidebarContent: CMSSideBar new.
	self sidebarContent rootComponent: self.
	self menuContent: CMSHeader new.
	self menuContent rootComponent: self
	"rendermenubar even if you are not signed in for develop purpose"
	"self displayMenuBar."
	