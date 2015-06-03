testing
canJoinToGroup: aCMSGroup

	(self participatesIn: aCMSGroup) ifTrue: [^ false].
	^ self isEnrolled: aCMSGroup course