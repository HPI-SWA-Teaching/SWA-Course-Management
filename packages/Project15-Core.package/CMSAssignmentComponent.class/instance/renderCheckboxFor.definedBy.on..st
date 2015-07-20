rendering
renderCheckboxFor: item definedBy: description on: html

	html div class: 'checkbox';
		with: [html label: [
			html checkbox value: (description at: #toggleState);
				callback: [:checked | checked = (description at: #toggleState)
							ifFalse: [(description at: #toggleAction)
										value: self predecessorElement
										value: item]].
			html text: item title content]]