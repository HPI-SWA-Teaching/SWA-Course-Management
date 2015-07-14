as yet unclassified
renderDateInputOn: html

	self renderDayInputOn: html.
	self renderMonthInputOn: html.
	self renderYearInputOn: html
"	html textInput on: #year of: self;
		class: 'form-control';
		attributeAt: 'data-inputmask' put: '''alias'': ''dd/mm/yyyy'''"
"	html div: [html html: '<input type=text class=form-control data-inputmask=''alias'': ''dd/mm/yyyy''>']"