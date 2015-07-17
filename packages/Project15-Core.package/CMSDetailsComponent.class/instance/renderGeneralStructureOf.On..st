rendering
renderGeneralStructureOf: description On: html

	html div class: 'box-body';
		with:[html definitionList class: 'dl-horizontal';
			with: [
				(description at: #generalStructure) do: [:line |
					html definitionTerm: (line at: #label).
					html definitionData: ((line at: #contentExtractor)
						value: self data)]]]