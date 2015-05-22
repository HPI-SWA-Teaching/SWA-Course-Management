as yet unclassified
go

	| loginAnswer user |
	loginAnswer := self call: (self rootComponent loadComponent: CMSLoginComponent).
	user := loginAnswer.

	user ifNotNil: [
		self session login: user.
		self call: self rootComponent].