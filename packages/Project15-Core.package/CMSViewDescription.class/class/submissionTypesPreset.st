as yet unclassified
submissionTypesPreset

	^ self new
		header: 'Übersicht Abgabeartefakte.';
		traceDescription: [:ignore | {}];
		buttons: #(); "no buttons"
		generalStructure: #();
		tables:
			{CMSTableViewDescription new
				header: 'Abgabeartefakte';
				data: [:ignore | CMSImageDatabase instance submissionTypeDb];
				buttons: {{'Artefakt anlegen'. 'btn btn-xs btn-success'. [:component :submissionType | [component editNew: CMSSubmissionType]]. [:user | user isAdmin]}};
				structure:
					{{'Name'. [:ignore :html :submissionType | html text: submissionType title content]. [:user :type | true]}.
					{'Extentions'. [:ignore :html :submissionType | html text: submissionType extensions content]. [:user :type | true]}.
					{''. [:component :html :submissionType |
						html anchor callback: [component view: submissionType];
							class: 'btn btn-xs btn-primary';
							with: 'Ansehen'].
						[:user :submissionType | true]}.
					{''. [:component :html :submissionType |
						html anchor callback: [component edit: submissionType];
							class: 'btn btn-xs btn-primary';
							with: 'Bearbeiten'].
						[:user :submissionType | user isAdmin]}}}