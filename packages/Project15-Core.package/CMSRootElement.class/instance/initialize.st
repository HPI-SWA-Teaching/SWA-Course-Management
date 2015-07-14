initialization
initialize 
	
	super initialize.
	self components: Dictionary new.
	self setMainContentTo: CMSDetailsComponent preparedBy: [:c | c data: #userProfile].
	self sidebarContent: CMSSideBar new.
	self sidebarContent rootComponent: self.
	self menuContent: CMSHeader new.
	self menuContent rootComponent: self
	