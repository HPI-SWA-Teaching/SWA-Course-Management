testing
isTextPresent: aString
	| page |

	page := driver findElementByTagName: 'body'.

	^ (page getText) includesSubString: aString
	