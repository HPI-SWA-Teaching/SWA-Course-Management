rendering
renderSideBarContentOn: html

	html unorderedList 
		class: 'sidebar-menu';
		with: [
			self renderSideBarHeaderOn: html.
			self renderUserItemsOn: html.
			self renderAdminItemsOn: html with: self session user]