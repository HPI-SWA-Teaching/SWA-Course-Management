as yet unclassified
userCourseListPresetFor: aCMSUser

	^ self new
		header: 'Meine Lehrveranstaltungen';
		traceDescription: [:ignore | {}];
		buttons: #();
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Veranstaltungen';
				data: [:ignore | aCMSUser courses];
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
						html anchor callback: [component session messageComponent infoMessage: (aCMSUser leaveCourse: course)];
							class: 'btn btn-xs btn-danger cms-btn-small';
							with: 'Ausschreiben'].
						[:user :course | true]}}}