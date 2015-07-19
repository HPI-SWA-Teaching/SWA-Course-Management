class initialization
initializeTopicsForCourse: aCourse

	| topics |
	topics := OrderedCollection new.

	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Course Management System');
		description: (CMSMultilineString containing: 'Manage courses, students, projects, deadlines, and deliverables. Based on requirements from deli')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Etoys Collaboration');
		description:  (CMSMultilineString containing: 'Support classroom collaboration on XO/Sugar. Send/Receive object. Combine object etc. Based on Telepathy framework')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Acceptance Testing FW');
		description: (CMSMultilineString containing: 'BDD/Cucumber style tests, SUnit integration (Interface Selenium, Interface Morphic testing framework), Debugging support')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Digital Simulator');
		description: (CMSMultilineString containing: 'Edit and simulate digital circuits, For use in E-learning, New components (MUX, DEMUX, Flip-Flops, Register, In/Output Delay), Component oscilloscope, Circuit tests, Improve All-In-One deployment')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Metacello Config Editor');
		description: (CMSMultilineString containing: 'Metacello: Smalltalk Package Manager, Configuration editor (Development workflow), Maintenance (Create/Update etc., Dependencies, Package from Image”')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Scamper Web browser');
		description: (CMSMultilineString containing: 'Browse the Web from Squeak (Squeak native browser, Tables, Backgrounds, etc., HTML/CSS), Possible features: Cookie/HTTPS support, Support more tags, Display HTTP errors, Follow redirects, DOM Inspector')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'squIRC Client');
		description: (CMSMultilineString containing: 'IRC client for Squeak (Connect to IRC servers, User/server profile management, Private messages), Possible features: Programming support, Exchange code snippets, Collaborative programming, ...')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Code Critics Tool Viz');
		description: (CMSMultilineString containing: 'SwaLint helps identifying potential code smells, Enhancements (Integration with current UI framework(s), Provide more checks based on metrics, Visualizations)')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'PathView');
		description: (CMSMultilineString containing: 'Create class diagrams based on source code, Including classes, methods, associations, comments')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Smalltalk REPL');
		description: (CMSMultilineString containing: 'Interactive shell for Squeak/Smalltalk, Persistency through image, Auto completion, Debugging')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Twitter-Squeak');
		description: (CMSMultilineString containing: 'Twitter/App.net client for Squeak, Possible features: Display timeline, mentions, Retweets and star function, Search by tag/user/, Display profiles')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Squeak REST FW');
		description: (CMSMultilineString containing: 'Foundation: RatPack (Basic REST framework), Routes, templating, proper HTTP, Extensions to RatPack: Cache control, Filters (e.g. authentication), Model-based API generation, HTTPS')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Issue/Task Integration');
		description: (CMSMultilineString containing: 'Easy task management in Squeak (similar to Mylyn), Squeak integration, Redmine/JIRA/GitHub issues integration')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Sandbox Deploy');
		description: (CMSMultilineString containing: 'Image sandboxes prevent code from accessing
specific system capabilities; Idea: create restricted deployment image; Sandbox deployment (Make Sandbox configurable, Create new Sandbox configuration tool, Integration with existing deployment, API to create a single deployment preparation tool)')).
	topics add: ((CMSTopic new ) title: (CMSSingleLineString containing: 'Vivide/Ohm');
		description: (CMSMultilineString containing: 'Interactive parse tree visualization; Visualization of a parse tree (Applied grammar rules, Text range parsed, Resulting object)')).

topics do: [:topic | aCourse addTopic: topic].