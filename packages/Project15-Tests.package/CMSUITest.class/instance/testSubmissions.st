testing
testSubmissions

	self loginAsAdmin.
	self submissions click.
	self createSubmissionsButton click.
	
	self submissionTitle sendKeys: 'Vortrag'.
	self submissionFileExtensions sendKeys: '.ppt, .pdf'.

	self saveButton click.
	
	self assert: self infoMessage isDisplayed.
	self assert: (self isTextPresent: 'Vortrag').
	self assert: (self isTextPresent: '.ppt, .pdf').

	self submissionsViewButton click.

	self submissionTitle sendKeys: 'testanhang'.
	self submissionFileExtensions sendKeys: ', .docx'.
	self cancelButton click.

	self assert: (self isTextPresent: 'Vortrag').
	self assert: (self isTextPresent: '.ppt, .pdf').

	self submissionsViewButton click.

	self deleteButton click.
	self assert: self infoMessage isDisplayed. 
	self deny: (self isTextPresent: '.ppt, .pdf').
	
	