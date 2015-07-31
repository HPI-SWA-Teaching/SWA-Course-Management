A CMSSubmission is a collection of assignments a group or a single student have/has to submit until a specified deadline.

Instance Variables
	assignments:		<OrderedCollection>
	course:		<CMSCourse>
	deadline:		<CMSDeadline>
	description:		<CMSMultilineString >
	groups:		<OrderedCollection>
	title:		<CMSSingleLineString>
	type:		<CMSSubmissionType>

assignments
	- all the assignments a submission claims to contain to call itself complete.

course
	- the course the submission is assigned to

deadline
	- the date and time the submission has to be handed in.

description
	- self-explanatory

groups
	- the groups that are supposed to hand in the submission

title
	- self-explanatory

type
	- a category the submission is a kind of. 
