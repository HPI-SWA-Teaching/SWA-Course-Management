accessing
courseViewButton
	| XPath |

	XPath :='//body/div/div/div/div/div/div/div/table[@id=''Veranstaltungen'']/tbody/tr[2]/td[4]/a'.
	^ driver findElementByXPath: XPath.

