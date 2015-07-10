as yet unclassified
renderYearInputOn: html

	html numberInput
		callback: [:value | self year: value asInteger];
		value: self year;
		type: 'text';
		size: self class extraSpace + 4