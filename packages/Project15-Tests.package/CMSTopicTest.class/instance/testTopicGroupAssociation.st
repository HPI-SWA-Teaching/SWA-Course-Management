running
testTopicGroupAssociation

	| topic1 topic2 group1 group2 |
	topic1 := CMSTopic new.
	topic2 := CMSTopic new.
	group1 := CMSGroup new.
	group2 := CMSGroup new.

	self assert: topic1 groups isEmpty.
	self assert: topic2 groups isEmpty.
	self assert: group1 topics isEmpty.
	self assert: group2 topics isEmpty.

	group1 addTopic: topic1.

	self deny: topic1 groups isEmpty.
	self assert: (topic1 groups includes: group1).
	self assert: (group1 topics includes: topic1).

	group2 addTopic: topic2.

	self deny: topic2 groups isEmpty.
	self assert: (topic2 groups includes: group2).
	self assert: (group2 topics includes: topic2).

	group1 addTopic: topic2.

	self deny: topic1 groups isEmpty.
	self assert: (topic2 groups includes: group1).
	self assert: (group1 topics includes: topic2).