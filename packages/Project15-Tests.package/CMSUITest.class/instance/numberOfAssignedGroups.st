testing
numberOfAssignedGroups
	| groups table headerRow |

	table := driver findElementByID: 'Gruppen'.
	groups := table findElementsByTagName: 'tr'.
	headerRow := 1.
	^ (groups size - headerRow).
