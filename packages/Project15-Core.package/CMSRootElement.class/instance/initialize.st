initialization
initialize 
	
	super initialize.
	self components: Dictionary new.
	self setMainContentTo: CMSDetailsComponent preparedBy: [:c | c data: #userProfile].
	self sideBar: CMSSideBar new.
	self sideBar rootComponent: self.
	self menuBar: CMSHeader new.
	self menuBar rootComponent: self
	