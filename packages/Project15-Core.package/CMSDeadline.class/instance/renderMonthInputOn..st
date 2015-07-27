rendering
renderMonthInputOn: html

	| list |
	list := html select
		on: #month of: self;
		labels: [:value | Date nameOfMonth: value].
	1 to: 12 do: [:i | list add: i]