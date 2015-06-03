accessing
createNewGroup

	| newGroup |

	newGroup := (CMSGroup named: self getDefaultGroupName)
		course: self.
	self groups add: newGroup.
	^ newGroup.