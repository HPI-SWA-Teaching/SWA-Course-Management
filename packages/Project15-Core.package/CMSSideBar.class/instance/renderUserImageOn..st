rendering
renderUserImageOn: html

	html div
		class: 'pull-left image';
		with: [
			 html image
				url: 'static/dist/img/user2-160x160.jpg';
				class: 'img-circle';
				altText: 'User Image']