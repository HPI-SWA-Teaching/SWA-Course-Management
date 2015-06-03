as yet unclassified
renderGeneralInformationOn: html

	html table: [
		html tableRow: [
			html tableData: 'Title'.
			html tableData: self course title].
		html tableRow: [
			html tableData: 'Term'.
			html tableData: self course term asString].
		html tableRow: [
			html tableData: 'Description'.
			html tableData: self course description]].