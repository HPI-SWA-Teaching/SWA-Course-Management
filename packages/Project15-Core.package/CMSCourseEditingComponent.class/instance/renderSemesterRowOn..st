rendering
renderSemesterRowOn: html
	
	html div
		class: 'form-group';
		with:[
			html label with: 'Semester'.
			html select 
				class: 'form-control';
				add: false;
				add: true;
				on: #winter of: self course term;
				labels: [ :value | value ifTrue: 'Winter' ifFalse: 'Sommer' ].
			html numberInput 
				class: 'form-control';
				callback: [:value | self course term year: value asInteger];
				value: self course term year]