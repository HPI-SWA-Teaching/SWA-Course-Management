as yet unclassified
renderEditingFieldsFor: anObject On: html

	| selectTag |
	selectTag := html select
		class: 'form-control';
		on: #type of: anObject;
		labels: [:type | type title content].
	CMSImageDatabase instance submissionTypeDb do: [:type | selectTag add: type]