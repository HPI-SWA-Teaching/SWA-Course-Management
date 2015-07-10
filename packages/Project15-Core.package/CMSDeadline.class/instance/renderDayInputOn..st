as yet unclassified
renderDayInputOn: html

	html numberInput
		min: 1; max: 31;
		callback: [:value | self day: value asInteger];
		value: self day;
		type: 'text';
		size: self class extraSpace + 2