initialization
initialize 
	
	super initialize.
	self mainContent: CMSLoginComponent new.
	"rendermenubar even if you are not signed in for develop purpose"
	self displayMenuBar.
	