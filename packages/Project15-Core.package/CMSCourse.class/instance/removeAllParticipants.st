participents
removeAllParticipants

	self participents copy do: [:participant |
		participant remove: self]