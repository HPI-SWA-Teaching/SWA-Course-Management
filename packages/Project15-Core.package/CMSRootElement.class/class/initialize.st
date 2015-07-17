as yet unclassified
initialize 

	| application |
	super initialize.
	(application:= WAAdmin register: self asApplicationAt: 'CMS').
	application isApplication ifTrue: [
            application preferenceAt: #sessionClass put: CMSSession.
		application preferenceAt: #rootClass put: CMSRootTask.
		application preferenceAt: #charSet put: 'utf-8'].