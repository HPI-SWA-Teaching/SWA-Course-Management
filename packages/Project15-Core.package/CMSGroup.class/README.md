A CMSGroup is the data structure for a group of students (users). It can be assigned to any amount of topics and can have one or more members (users). It is part of exactly one course.
Instance Variables
	course:		<CMSCourse>
	members:		<Set>
	submissions:		<OrderedCollection>
	title:		<Sting>
	topics:		<OrderedCollection>

course
	- the course the group is a part of

members
	- users participating in the group

submissions
	- submission assigned to the group

title
	- self-explanatory

topics
	- topics assigned to the group 
