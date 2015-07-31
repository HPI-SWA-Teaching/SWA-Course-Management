accessing
globalPresets

	^ globalPresets ifNil: [globalPresets := self defaultGlobalPresets]