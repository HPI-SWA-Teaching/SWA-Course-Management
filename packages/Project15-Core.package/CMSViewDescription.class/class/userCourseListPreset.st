as yet unclassified
userCourseListPreset

	^ self new
		header: 'Meine Lehrveranstaltungen';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Veranstaltungen';
				data: [:user | user courses];
				buttons: #();
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
						html anchor callback: [component session messageComponent infoMessage: (component session currentUser leaveCourse: course)];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Ausschreiben'].
						[:user :course | true]}}}