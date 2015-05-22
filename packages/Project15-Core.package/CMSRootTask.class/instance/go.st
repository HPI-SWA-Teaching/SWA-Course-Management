as yet unclassified
go

	| loginAnswer user |
	loginAnswer := self call: CMSLoginComponent new.
	user := loginAnswer.

	user ifNotNil: [
		self session login: user.
		self call: CMSRootElement new].