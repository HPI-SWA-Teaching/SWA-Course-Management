A CMSNewEditingComponent is a component to manipulate or delete any (editable) element in the system (editable means a class implementing >>getEditingDirectives). It renderes the editing fields defined by the element itself to manipulate the elemnts attributes. Among that a save, cancel and a delete button is rendered to end the editing in the wanted way.

Instance Variables
	editedObject:		<Object>
	originalObject:		<Object>

editedObject
	- a (veryDeep)copy of the object to be edited

originalObject
	- the original object to be edited (held back in case of discarding the changes already made)
