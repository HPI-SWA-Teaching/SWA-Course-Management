accessing
viewGroupButton
	| XPath |

	XPath := '//*[@id="Gruppen"]/tbody/tr[2]/td[3]/a'.

	^ driver findElementByXPath: XPath.