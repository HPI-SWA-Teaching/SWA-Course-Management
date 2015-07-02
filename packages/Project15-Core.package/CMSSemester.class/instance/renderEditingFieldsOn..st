accessing
renderEditingFieldsOn: html

	html select 
		class: 'form-control';
		add: false;
		add: true;
		on: #winter of: self;
		labels: [ :value | value ifTrue: 'Winter' ifFalse: 'Sommer' ].
	html numberInput 
		class: 'form-control';
		callback: [:value | self year: value asInteger];
		value: self year