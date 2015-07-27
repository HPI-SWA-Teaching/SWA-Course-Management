validating
validate

	((0 to: 59) rangeIncludes: self minute) ifFalse: [^ 'Inkorrekte Zeitangabe (Minuten)'].
	((0 to: 23) rangeIncludes: self hour) ifFalse: [^ 'Inkorrekte Zeitangabe (Stunden)'].
	((1 to: (Month daysInMonth: self month forYear: self year)) rangeIncludes: self day)
		ifFalse: [^ 'Inkorrekte Datumsangabe (Tag)'].
	((1 to: 12) rangeIncludes: self month) ifFalse: [^ 'Inkorrekte Datumsangabe (Monat)'].
	^ ''