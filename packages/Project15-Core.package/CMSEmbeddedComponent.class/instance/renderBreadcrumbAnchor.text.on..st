rendering
renderBreadcrumbAnchor: callback text: text on: html

	text isEmpty 
		ifFalse: [
			html listItem: [
				html anchor
					callback: callback;
					with: text]].