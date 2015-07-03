rendering
returnToPredecessor

	self rootComponent
		setMainContentTo: self predecessorComponent
		preparedBy: [ "das könnte man über eine methode in der neuen DetailsComponent lösen, die das aktuelle Element, dass bearbeitet wird, und zu dessen Ansicht man ja zurrückspringen will setzt (in unserem Fall bisher Topic oder Group) statt 'group: ' ":component | component group: self predecessorElement ]