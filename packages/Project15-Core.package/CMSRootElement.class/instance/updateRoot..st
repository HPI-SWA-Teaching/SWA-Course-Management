rendering
updateRoot: anHtmlRoot

	super updateRoot: anHtmlRoot.	
	anHtmlRoot title: 'CMS'.
	anHtmlRoot stylesheet url: '/static/styles/css/bootstrap.min.css'.
	anHtmlRoot stylesheet url: '/static/styles/css/styles.css'.
	anHtmlRoot stylesheet url: '/static/styles/css/AdminLTE.min.css'.
	anHtmlRoot stylesheet url: '/static/styles/css/skin-blue.min.css'.
	anHtmlRoot bodyAttributes addClass: 'skin-blue'