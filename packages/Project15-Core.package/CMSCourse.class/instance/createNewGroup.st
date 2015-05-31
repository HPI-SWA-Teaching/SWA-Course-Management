accessing
createNewGroup

	| newGroup |

	newGroup := CMSGroup named: self getDefaultGroupName.
	self groups add: newGroup.
	^ newGroup.