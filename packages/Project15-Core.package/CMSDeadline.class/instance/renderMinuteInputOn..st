rendering
renderMinuteInputOn: html

	html numberInput
		min: 0; max: 59;
		callback: [:value | self minute: value asInteger];
		value: self minute;
		type: 'text';
		size: self class extraSpace + 2