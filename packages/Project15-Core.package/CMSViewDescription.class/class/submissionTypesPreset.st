as yet unclassified
submissionTypesPreset

	^ self new
		header: 'Alle Abgabeartefakte';
		traceDescription: [:ignore | {}];
		buttons: #(); "no buttons"
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Übersicht Abgabeartefakte';
				data: [:ignore | CMSImageDatabase instance submissionTypeDb];
				buttons: {{'Artefakt anlegen'. 'btn btn-xs btn-success cms-btn-small'. [:component :submissionType | [component editNew: CMSSubmissionType]]. [:user :ignore | user isAdmin]}};
				structure:
					{{'Name'. [:ignore :html :submissionType | html text: submissionType title content]. [:user :type | true]}.
					{'Dateitypen'. [:ignore :html :submissionType | html text: submissionType extensions content]. [:user :type | true]}.
					{''. [:component :html :submissionType |
						html anchor callback: [component edit: submissionType];
							class: 'btn btn-xs btn-primary cms-btn-small';
							with: 'Ansehen'].
						[:user :submissionType | user isAdmin]}}}