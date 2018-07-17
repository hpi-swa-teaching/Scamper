testing
test07intializeMIMEDatabase

	self assert: (MIMEDocument guessTypeFromExtension: 'html') equals: 'text/html'.
	self assert: (MIMEDocument guessTypeFromExtension: 'png') equals: 'image/png'.
	self assert: (MIMEDocument guessTypeFromExtension:  'svg') equals: 'image/svg'.