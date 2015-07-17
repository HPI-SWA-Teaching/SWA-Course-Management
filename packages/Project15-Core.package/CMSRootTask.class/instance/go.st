initialization
go

	| loginAnswer user loginComponent|
	loginComponent := self rootComponent loadComponent: CMSLoginComponent.
	loginAnswer := self call: (self rootComponent loadComponent: CMSLoginComponent).
	loginAnswer 
		ifTrue: [
			user := CMSImageDatabase instance findUserByName: loginComponent username.
			self session login: user.
			self rootComponent setMainContentTo: CMSDetailsComponent preparedBy: [:component | component data: #userProfile].
			self call: self rootComponent] 
		ifFalse: [self call: loginComponent loginFailed]