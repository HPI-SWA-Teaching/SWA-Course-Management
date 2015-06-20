accessing
removeAllMembers

	self members copy do: [:member |
		self removeGroupMember: member]