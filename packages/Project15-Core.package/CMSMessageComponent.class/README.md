A CMSMessageComponent is a component rendering the feedback message every time data was manipulated or actions were performed. 

Instance Variables
	messageText:		<String>
	messageType:		<String>
	wasShown:		<Boolean>

messageText
	- the message to be displayed

messageType
	- defining what kind of message shall be displayed. It specifies the css class to be used for the message div. 

wasShown
	- is used to keep the notification up to date (says whether it was shown yet or still has to).
