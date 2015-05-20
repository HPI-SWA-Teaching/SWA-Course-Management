rendering
renderSemesterRowOn: html

	html tableRow: [
		html tableData: 'Semester: '.
		html tableData: [
			html select add: false;
				add: true;
				on: #winter of: self course term;
				labels: [ :value | value ifTrue: 'Winter' ifFalse: 'Summer' ].
			html numberInput on: #year of: self course term]]