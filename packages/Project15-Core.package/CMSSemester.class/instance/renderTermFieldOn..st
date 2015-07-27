rendering
renderTermFieldOn: html

	html select 
		class: 'form-control';
		add: false;
		add: true;
		on: #winter of: self;
		labels: [:value | value ifTrue: 'Winter' ifFalse: 'Sommer']