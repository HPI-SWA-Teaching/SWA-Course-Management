as yet unclassified
dissociateFromAllGroups

	self groups copy do: [:group |
		group removeTopic: self]