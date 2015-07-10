as yet unclassified
renderHourInputOn: html

	html numberInput
		min: 0; max: 23;
		callback: [:value | self hour: value asInteger];
		value: self hour;
		type: 'text';
		size: self class extraSpace + 2