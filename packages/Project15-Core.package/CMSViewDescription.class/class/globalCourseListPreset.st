as yet unclassified
globalCourseListPreset

	^ self new
		header: 'Veranstaltungsübersicht';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Veranstaltungen';
				data: [:ignore | CMSImageDatabase instance courseDb];
				buttons: {{'Kurs anlegen'. 'btn btn-xs btn-success cms-btn-small'. [:component :course | [component editNew: CMSCourse]]. [:user | user isAdmin]}};
				structure:
					{{'Semester'. [:ignore :html :course | html text: course term asString]. [:user :course | true]}.
					{'Lehrveranstaltung'. [:ignore :html :course | html text: course title content]. [:user :course | true]}.
					{'Beschreibung'. [:ignore :html :course | html text: course description content]. [:user :course | true]}.
					{''. [:component :html :course |
						html anchor callback: [component view: course];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :course | true]}.
					{''. [:component :html :course |
						html anchor callback: [component session user joinCourse: course];
							class: 'btn btn-xs btn-success cms-btn-small';
							with: 'Einschreiben'].
						[:user :course | (user isEnrolled: course) not]}.
					{''. [:component :html :course |
						html anchor callback: [component edit: course];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Bearbeiten'].
						[:user :course | user isAdmin]}}}