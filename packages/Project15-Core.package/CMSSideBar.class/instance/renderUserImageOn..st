rendering
renderUserImageOn: html

	html div
		class: 'pull-left image';
		with: [
			 html image
				class: 'img-circle';
				url: '/static/styles/img/user2-160x160.jpg';
				altText: 'User Image']