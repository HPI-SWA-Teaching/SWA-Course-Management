rendering
renderTableRowsOf: description with: data On: html

	data do: [:entry |
		html tableRow: [
			(description at: #structure) do: [:column |
				html tableData: [
					self ifVisible: column
						with: entry
						then:
							[(column at: #contentRenderer)
								value: self value: html value: entry]]]]]