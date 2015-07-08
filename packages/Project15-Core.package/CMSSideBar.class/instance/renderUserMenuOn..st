rendering
renderUserMenuOn: html

	| user |
	user := self session user.
			html div
				class: 'pull-left image';
				with: [
					 html image
						url: 'static/dist/img/user2-160x160.jpg';
						class: 'img-circle';
						altText: 'User Image'.].
			html div
				class: 'pull-left info';
				with: [
					html paragraph
						with: user username content.
					html anchor
						url: '#';
						with: [
							html inserted
								class: 'fa fa-circle text-success'.
							html text: ' ', (user isAdmin ifTrue: ['Admin'] ifFalse: ['User'])]]