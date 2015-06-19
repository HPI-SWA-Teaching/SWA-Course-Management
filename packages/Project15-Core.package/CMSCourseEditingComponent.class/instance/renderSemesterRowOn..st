rendering
renderSemesterRowOn: html

	html tableRow: [
		html tableData: 'Semester: '.
		html tableData: [
			html select add: false;
				add: true;
				on: #winter of: self course term;
				labels: [ :value | value ifTrue: 'Winter' ifFalse: 'Sommer' ].
			html numberInput callback: [:value | self course term year: value asInteger];
				value: self course term year]]