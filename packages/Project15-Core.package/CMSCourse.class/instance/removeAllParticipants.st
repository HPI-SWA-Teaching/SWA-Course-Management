participents
removeAllParticipants

	self participents copy do: [:participant |
		participant leaveCourse: self]