initialization
go

	| loginAnswer user |
	loginAnswer := self call: (self rootComponent loadComponent: CMSLoginComponent).
	user := loginAnswer.

	user ifNotNil: [
		self session login: user.
		self rootComponent
			setMainContentTo: CMSDetailsComponent
			preparedBy: [:component | component data: #userCourses].
		self call: self rootComponent]