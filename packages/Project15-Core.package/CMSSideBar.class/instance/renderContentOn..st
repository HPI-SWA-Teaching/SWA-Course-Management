rendering
renderContentOn: html

	html div
		class: 'sidebar';
		with: [
			html div
				class: 'user-panel';
				with: [self renderUserMenuOn: html].
			html unorderedList 
				class: 'sidebar-menu';
				with: [self renderSideBarContentOn: html]]. 

		
			