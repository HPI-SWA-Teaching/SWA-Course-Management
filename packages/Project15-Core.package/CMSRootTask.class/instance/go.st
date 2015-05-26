as yet unclassified
go

	| loginAnswer user |
	loginAnswer := self call: (self rootComponent loadComponent: CMSLoginComponent).
	user := loginAnswer.

	user ifNotNil: [
		self session login: user.
		self rootComponent mainContent:
			(self rootComponent loadComponent: CMSUserCourseListComponent).
		self call: self rootComponent].