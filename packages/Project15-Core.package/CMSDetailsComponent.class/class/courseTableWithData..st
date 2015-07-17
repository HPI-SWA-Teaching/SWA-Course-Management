presets - tables
courseTableWithData: aBlock

	^ Dictionary newFrom: 
		{#header -> 'Veranstaltungen'.
		#dataExtractor -> [:ignore | CMSImageDatabase instance courseDb].
		#buttons -> {Dictionary newFrom:
			{#label -> 'Kurs anlegen'.
			#class -> 'btn btn-xs btn-success cms-btn-small'.
			#callbackConstructor -> [:component :course | [component editNew: CMSCourse]].
			#visibilityTest -> [:user :ignore | user isAdmin]}}.
		#structure ->
			{Dictionary newFrom: 
				{#label -> 'Semester'.
				#contentRenderer -> [:ignore :html :course | html text: course term asString]}.
			Dictionary newFrom:
				{#label -> 'Lehrveranstaltung'.
				#contentRenderer -> [:ignore :html :course | html text: course title content]}.
			Dictionary newFrom:
				{#label -> 'Beschreibung'.
				#contentRenderer -> [:ignore :html :course | html text: course description content]}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :course |
						html anchor callback: [component view: course];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen']}.
			Dictionary newFrom:
				{#contentRenderer ->
					[:component :html :course | | userIsEnrolled |
						userIsEnrolled := component session user isEnrolled: course.
						html anchor
							callback: (userIsEnrolled
								ifTrue: [[component notifyUserAbout: [component session user leaveCourse: course]]]
								ifFalse: [[component notifyUserAbout: [component session user joinCourse: course]]]);
							class: 'btn btn-xs btn-', (userIsEnrolled ifTrue: ['danger'] ifFalse: ['success']), ' cms-btn-small';
							with: (userIsEnrolled
								ifTrue: ['Ausschreiben']
								ifFalse: ['Einschreiben'])]}.
			Dictionary newFrom: 
				{#contentRenderer ->
					[:component :html :course |
						html anchor callback: [component edit: course];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Bearbeiten'].
				#visibilityTest -> [:user :course | user isAdmin]}}}